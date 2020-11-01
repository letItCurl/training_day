import { Controller } from "stimulus"

export default class extends Controller{
  initialize(){
    this.nameEl.value = this.name
  }

  log(){
    console.log(this.targets)
    console.log(this.nameEl.value)
  }

  paste(event){
    event.preventDefault()
    console.log("paste not allowed")
  }

  get name(){
    console.log(this.data)
    if(this.data.has("name")){
      return this.data.get("name")
    } else {
      return "Default value"
    }
  }

  get nameEl(){
    return this.targets.find("name")
  }
}