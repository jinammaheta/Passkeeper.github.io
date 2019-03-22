function fetch()
{
    req=XMLHttpRequest();
    req.open("GET","http://localhost:8080/projectjava/send",true);
    req.onreadystatechange=function()
    {
        if(req.readyState==4&&req.status==200)
        {
            document.getElementById("blk").innerHTML=req.responseText;
        }
    };
    
}
document.addEventListener('DOMContentLoaded', function () {
    document.getElementById("btn1").addEventListener('click', ac);
});


function ac()
{
    req=new XMLHttpRequest();
    req.open("GET","http://localhost:8080/passkeeper/send.jsp?domain="+document.getElementById("domain").value+"&userid="+document.getElementById("userid").value+"&master="+document.getElementById("master").value,true);
    req.send();
    req.onreadystatechange=function()
    {
        if(req.readyState==4&&req.status==200)
        {
            document.getElementById("fill").innerHTML=req.responseText;
        }
    };
}
