# whisper batch transcription script
# 008-tech-stack-landscape / 20 target mp4 files
# model: small / language: Korean / output: srt + txt
# 2026-05-16

$src = 'C:\Kiwi_Down'
$dst = 'C:\NewtonHQ\00_meta\projects\HQ_Workshop\workshops\008-tech-stack-landscape\transcripts'
$logFile = Join-Path $dst '_run_log.txt'

$targets = @(
    'Part1_App_vs_Web_Java_vs_Python',
    'Part2_API_동기비동기_JSON',
    'Part3_소프트웨어공학_DevOps_Agile',
    'Part4_컴퓨터구조_OS',
    'Part5_네트워크',
    'Part6_데이터베이스',
    'Part7_IT인프라_아키텍처',
    'Part8_클라우드_IaaS_PaaS_SaaS',
    '보조_코딩몰라도_AI로_서비스개발',
    '보조_4050대_바이브코딩_이유',
    '보조_IT기술지식_20분_전체지도',
    '보조_Web_WebApp_Hybrid_Native',
    '보조_URL입력시_브라우저_일',
    '보조_localhost_서버_클라이언트',
    '보조_로그인_쿠키_세션_JWT',
    '보조_프론트_백_DB_20분',
    '보조_20년_IT아키텍처_변천',
    '보조_서비스_실패_예방',
    '보조_AI코드_보안_점검',
    '보조_30년_AI시대_개발자_생존스킬'
)

$total = $targets.Count
$done = 0
$skipped = 0
$failed = 0

function Log($msg) {
    $ts = Get-Date -Format 'yyyy-MM-dd HH:mm:ss'
    $line = "[$ts] $msg"
    Write-Output $line
    Add-Content -Path $logFile -Value $line -Encoding UTF8
}

New-Item -ItemType Directory -Force -Path $dst | Out-Null
Log "=== whisper batch start | total: $total ==="

foreach ($base in $targets) {
    $mp4 = Join-Path $src "$base.mp4"
    $srt = Join-Path $dst "$base.srt"
    $txt = Join-Path $dst "$base.txt"

    if ((Test-Path $srt) -and (Test-Path $txt)) {
        Log "[skip] $base (exists)"
        $skipped++
        continue
    }

    if (-not (Test-Path $mp4)) {
        Log "[miss] $base -- source not found"
        $failed++
        continue
    }

    Log "[start] $base"
    try {
        & whisper $mp4 --language Korean --model small --output_dir $dst --output_format srt 2>&1 | ForEach-Object { Write-Output $_ }
        & whisper $mp4 --language Korean --model small --output_dir $dst --output_format txt 2>&1 | ForEach-Object { Write-Output $_ }

        if ((Test-Path $srt) -and (Test-Path $txt)) {
            $srtKB = [math]::Round((Get-Item $srt).Length / 1KB, 1)
            $txtKB = [math]::Round((Get-Item $txt).Length / 1KB, 1)
            Log "[done] $base | srt ${srtKB}KB txt ${txtKB}KB"
            $done++
        } else {
            Log "[warn] $base -- output missing after run"
            $failed++
        }
    } catch {
        Log "[error] $base -- $_"
        $failed++
    }
}

Log "=== batch complete | done:$done skip:$skipped fail:$failed / total:$total ==="
