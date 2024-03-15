import QtQuick 2.0
import QtQuick.Window 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import "imports.js" as SetTimeout


Window {
    id: window
    title: qsTr("Game")
    width:960
    height:640
    Rectangle{
        height:parent.height
        width:parent.width
        color:"black"
    }
    Image {
        id: pimage
        source:"PlayerData/Walk_Up2.png"
        property var prx: 0
        property var pry: 0
        x:64
        width:64
        height:64
    }
    Item{
        id: dally
        property var time: true
    }
    Item{
        id: controller
        focus: true
        function delay(delayTime, cb) {
            timer.interval = delayTime;
            timer.repeat = false;
            timer.triggered.connect(cb);
            timer.start();
        }
        function delayer(delayTime, cb) {
            timer.interval = delayTime;
            timer.repeat = false;
            timer.triggered.connect(cb);
            timer.start();
        }


        Keys.onLeftPressed: {
            if (dally.time == true) {
                dally.time = false
                if (pimage.x != 0) {
                    dally.time = false
                    SetTimeout.left()
/*                    setTimeout(function() {
                        pimage.source = "PlayerData/Walk_Left2.png"
                        console.log(pimage.x)
                        //your code to be executed after 1 second
                    }, 250)
                    console.log(pimage.x)
                    delay(1000, function (){
                        pimage.source = "PlayerData/Walk_Left2.png"
                        console.log(pimage.x)
                        pimage.x -= 16
                        delay(1000, function (){
                            pimage.x -= 16
                            console.log(pimage.x)
                            pimage.source = "PlayerData/Walk_Left3.png"
                            delay(1000, function (){
                                pimage.x -= 16
                                console.log(pimage.x)
                                pimage.source = "PlayerData/Walk_Left1.png"
                                delay(1000, function (){
                                    pimage.source = "PlayerData/Walk_Left2.png"
                                    dally.time = true
                                })
                            })
                        })
                    })*/



                }
            else {
                console.log("Cannot go farther")
                }
            dally.time = true
            }
        }
    }
    Timer {
        id: timer
    }
    Component.onCompleted: {
        visible = true
    }
}
