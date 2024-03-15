import { setTimeout } from "timers"
export function left() {
    setTimeout(function() {
        pimage.source = "PlayerData/Walk_Left2.png"
        console.log(pimage.x)
        //your code to be executed after 1 second
    }, 250)
}
