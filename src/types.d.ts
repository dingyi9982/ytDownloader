type format = {
    vcodec?: string,
    acodec?: string,
    ext: string,
    filesize?: number,
    format_id: string,
    format_note: string,
    height: number,
    resolution: string,
    video_ext: string,
    audio_ext: string,
    filesize_approx?: number,
    tbr: number,
    fps: number,
}

type info = {
    title: string,
    id: string,
    thumbnail: string,
    duration: number,
    formats: format[],
    extractor_key: string,
}

declare global {
    const i18n: any;
    interface Window {
        i18n: any;
    }
    interface Process {
        windowsStore: any;
    }
}

declare module "yt-dlp-wrap-plus";

export{
    format,
    info
}