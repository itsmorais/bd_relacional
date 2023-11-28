import { reset } from "../../services/reset";
import { Resetar } from "./style";


export default function BotaoResetar() {
    function resetar() {
        reset().then((res)=>{
            alert("Resetando...")
            window.location.reload()
        })
    }

    return (
        <Resetar onClick={resetar}>RESETAR</Resetar>
    )
}