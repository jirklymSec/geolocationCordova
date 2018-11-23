function GetLocation()
{
    alert("I have something");
    navigator.geolocation.getCurrentPosition(this.succesCallback,this.errorCallback);
}

function succesCallback(position)
{
    alert("succes");
    alert(position.coords.latitude + "\n" +
    position.coords.longitude);
    document.getElementById("map").src = "http://staticmap.openstreetmap.de/staticmap.php?center=" + position.coords.latitude + "," + position.coords.longitude +"&zoom=14&size=865x512&maptype=mapnik";    
}

function errorCallback()
{
    alert("error");
}
