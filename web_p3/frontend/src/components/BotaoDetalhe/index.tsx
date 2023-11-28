import { BotaoStilo, Contador } from "./style";
import { update } from "../../services/update";
import { Color } from "../../types";
import { useState } from "react";

export function BotaoDetalhe(botao: Color) {
    const [counts, setCounts] = useState(botao.count)

    function handleUpdate(id: number) {
        update(id)
        setCounts(counts + 1)
    }
    return (

        <BotaoStilo key={Math.random()} onClick={e => handleUpdate(botao.id)}
            background={botao.background} color={botao.color} >

            <Contador key={botao.id} color={botao.color}> {counts}</Contador>
        </BotaoStilo>

    )
}
