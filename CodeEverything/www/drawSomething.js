
function DrawSomething(){

    var ctx = SCREEN.Context2d;
    
    ctx.fillStyle="blue";
    ctx.fillRect(0,0,SCREEN.Width, SCREEN.Height);

    ctx.beginPath();
    ctx.arc(100, 100, 40, 0, 2*Math.PI);
    ctx.fillStyle="red";
    ctx.fill();


 }
