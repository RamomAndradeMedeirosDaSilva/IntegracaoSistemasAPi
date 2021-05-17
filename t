 axios.get('https://3001-pink-python-f6p3x96j.ws-us04.gitpod.io/?latitude='+latitude+'&longitude='+longitude)
                    .then(response => function(response){
                        var latitude = response.latitude;
                        var longitude = response.longitude;
                        var hora = response.hora;
                        var min = response.min;
                        //hora += min
                        console.log(response.data[0])

                        x.innerHTML = JSON.stringify({"Latitude":latitude, "Longitude":longitude, "Hora":hora + ":" + min});
                    })
                    .catch(error => console.log(error))