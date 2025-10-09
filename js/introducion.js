var ul = document.getElementById("lista")
let url = "https://thesimpsonsapi.com/api/"
var list=""
let arr_original = []

var getLista = (page)=>{
fetch(url+"characters?page="+page).then(response=>{
    if(!response.ok){
        console.log("Error en la red")
    }
    return response.json()
}).then(data=>{
    console.log("Datos del personaje: ",data)
   
    data.results.forEach(personaje=>{
        arr_original.push({
            personaje:personaje,
            datos:null
        })
        list+=`
        <li>
            <img src="https://cdn.thesimpsonsapi.com/500${personaje.portrait_path}" width="200px">
            <h2>${personaje.name}</h2>
        </li>   `
    })
    ul.innerHTML = list
    console.log("Arreglo final",arr_original)
})
}
for(let i=1;i<=5;i++){
    getLista(i)
}
setTimeout(()=>{
  document.getElementById("preloader").style.display="none"  
},1500)
const imprimir = (arr)=>{
    var todo="";
    arr.forEach(item=>{
todo+=`
        <li>
            <img src="https://cdn.thesimpsonsapi.com/500${item.personaje.portrait_path}" width="200px">
            <h2>${item.personaje.name}</h2>
        </li>   `
    })
    ul.innerHTML=todo
}
//mostrar todo
document.querySelector("#mostrarTodo").addEventListener("click",(evt)=>{
    //evitar recarga    
    evt.preventDefault()
    imprimir(arr_original)
})

//Edad menor a 18
document.querySelector("#edad").addEventListener("click",(evt)=>{
    //evitar recarga    
    evt.preventDefault()
    alert("123")
    let res = arr_original.filter((item)=> item.personaje.age<18 && item.personaje.age!=null)
    console.log("edad ",res)
imprimir(res)
})
//Personajes muertos
document.querySelector("#muerto").addEventListener("click",(evt)=>{
    //evitar recarga    
    evt.preventDefault()
    alert("123")
    let res = arr_original.filter((item)=> item.personaje.status=="Deceased")
    console.log("muertos ",res)
imprimir(res)
})

//promedio de edad
document.querySelector("#promedio").addEventListener("click",(evt)=>{
    evt.preventDefault()
    const array1 = arr_original.map(item=>item.personaje.age).filter(age=>age!=null);

    // 0 + 1 + 2 + 3 + 4
    const initialValue = 0;
    const sumWithInitial = array1.reduce(
      (accumulator, currentValue) => accumulator + currentValue,
      initialValue,
    );
    
    console.log(sumWithInitial);
    alert("El promedio de edad es: " + (sumWithInitial / array1.length).toFixed(0) );
    
})

// ordenar por edad asc 
document.querySelector("#ordenar").addEventListener("click",(evt)=>{
    evt.preventDefault()
    let res = arr_original.sort((a,b)=>{
        if(a.personaje.age==null) return 1
        if(b.personaje.age==null) return -1
        return a.personaje.age - b.personaje.age
    })
    console.log("ordenar ",res)
imprimir(res)
})

//mostrar el mas viejo y el mas joven
document.querySelector("#puntas").addEventListener("click",(evt)=>{
    evt.preventDefault()
    let res = arr_original.sort((a, b) => {
        if (a.personaje.age === null && b.personaje.age !== null) return 0;
        if (b.personaje.age === null && a.personaje.age !== null) return 0;
        if (a.personaje.age === null) return -1;  // nulls al principio
        if (b.personaje.age === null) return 1;
        return a.personaje.age - b.personaje.age;
    });
    imprimir([res[0],res[res.length-1]])
    console.log("puntas ",[res[0],res[res.length-1]])

})
//mostrar estudiantes 
document.querySelector("#estudiantes").addEventListener("click",(evt)=>{
    evt.preventDefault()
    let res = arr_original.filter((item)=> item.personaje.occupation && item.personaje.occupation.includes("Student"))
    console.log("estudiantes ",res)
    imprimir(res)
})
//mostrar los items la fecha de nacimiento sea <1980/02/01
document.querySelector("#fecha").addEventListener("click",(evt)=>{
    evt.preventDefault()
    var fecha_limite = new Date("1980-02-01");
    let res = arr_original.filter((item)=>{
        if(item.personaje.date_of_birth){
            let fecha_nacimiento = new Date(item.personaje.date_of_birth);
            return fecha_nacimiento < fecha_limite;
        }
        return false;
    })
    console.log("fecha ",res)
    imprimir(res)

})
//buscador por frases