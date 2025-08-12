let songs = {
    "Where_you_are":"HalalBeats",
    "Mashia_El_kayzla":"El Moutanabbi",
    "RainSound":"Noise To Study",
    "WavesSound":"Noise To Study"
}
let songIndex = 0 , play = false
let TotalSongs = Object.keys(songs).length
let song = document.getElementById("song")
let progress = document.getElementById("progress")

song.onloadedmetadata = function(){
    progress.max = song.duration;
    progress.value = song.currentTime;
}

function switchMode() {
    const playPause = document.getElementById("playPause");
    if (play) {
        playPause.classList.remove("fa-play");
        playPause.classList.add("fa-pause");
    } else {
        playPause.classList.remove("fa-pause");
        playPause.classList.add("fa-play");
    }
}
function PlayPause(){
    switchMode()
    if(play) song.play()
    else song.pause()
    play = !play
}
function ChangeAudio(mode){
    song.currentTime = 0;
    if(mode=="next") songIndex++
    else songIndex--
    songIndex = (songIndex + TotalSongs) % TotalSongs
    let title = Object.keys(songs)[songIndex]
    document.getElementById("title").textContent = title.replaceAll("_"," ")
    document.getElementById("SongWallpaper").setAttribute("src",`wallpapers/${title}.jpeg`)
    document.getElementById("SongSource").setAttribute("src",`audios/${title}.mp3`)
    document.getElementById("sub-title").textContent = songs[title]
    song.load()
    play = false;
    document.getElementById("playPause").className = "fas fa-play"
}

let timerRange = setInterval(() => {
    progress.value = song.currentTime;
    if(!isNaN(song.duration) && song.currentTime >= song.duration){
        ChangeAudio("next");
        PlayPause()
        progress.value = 0
    }
},500);
progress.addEventListener("input",function(){
    song.currentTime = progress.value
})