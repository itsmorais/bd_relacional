import { BotaoDetalhe } from "../BotaoDetalhe"
import { MeuContexto } from "../../contexts"
import { useContext } from "react"
export default function Botao() {
    const botoes = useContext(MeuContexto)
    return (
        <>
            {
                botoes.map((botao) => (
                    <BotaoDetalhe key={Math.random()} background={botao.background} color={botao.color}
                        count={botao.count} id={botao.id} />
                ))
            }
        </>
    )
}

