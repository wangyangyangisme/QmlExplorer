import QtQuick 2.0


/**
borderImage 测试
可自动拉伸重叠的图片，类似android的 *.9.png 文件
*/
Grid {
    width: 500
    height: 600
    spacing: 10
    columns: 2

    Text{text: 'raw image'}
    Image {
        source: "res/borderimage.jpg"
    }

    Text{text: 'border image'}
    BorderImage {
        width: 180; height: 180
        border { left: 30; top: 30; right: 30; bottom: 30 }
        horizontalTileMode: BorderImage.Stretch
        verticalTileMode: BorderImage.Stretch
        source: "res/borderimage.jpg"
    }


    Text{text: 'border image repeat'}
    BorderImage {
        width: 180; height: 180
        border { left: 30; top: 30; right: 30; bottom: 30 }
        horizontalTileMode: BorderImage.Repeat
        verticalTileMode: BorderImage.Repeat
        source: "res/borderimage.jpg"
    }
}
