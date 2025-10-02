let x = [1,2,3,4,]
const y = [20,50,...x]
console.log(y)

const edadLegalEEUU = 21;
const checkEstado = (edad, edadLegal)=>{
    return edad >= edadLegal ? "Eres mayor" : "Eres menor";
};

const persona = checkEstado(18, edadLegalEEUU);
console.log(persona);

//JSON
let arreglo = [
    {id :1, name:"Juan", age:20},
    {id :2, name:"Ana", age:25},
    {id :3, name:"Luis", age:30},
    {id :4, name:"Sebastian", age:18},

]
let ul = document.getElementById("lista");
var todo = "";
arreglo.forEach((item) => {

    todo += `<li>${item.name} - Edad: ${item.age}</li>`;
})
ul.innerHTML = todo;
console.log("Arreglo original",arreglo);
var copia=arreglo.map((item,index) => {
return item.age *=10
})
console.log("Arreglo original",arreglo);
console.log("Arreglo Modificado",copia);


//conexion a API
let url= "https://thesimpsonsapi.com/api/"
fetch(url+"characters").then(response=>{
    if(!response.ok){
        console.log("Error en la llamada a la API")
    }
    return response.json();
}).then(data=>{
    console.log("datos de los personaje:", data)
    var lis=""
    data.results.forEach((personaje)=>{
        lis+=`<li>
            <img src="https://cdn.thesimpsonsapi.com/200${personaje.portrait_path}" >
            <h2>${personaje.name}</h2> 
        </li>`
    })
    ul.innerHTML=lis;
})