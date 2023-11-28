import styled from "styled-components";
interface ContainerProps {
    color: string;
    background: string
}
export const BotaoStilo = styled.button<ContainerProps>`
    width: 100px;
    height: 100px;
    border-radius: 50%;
    margin-right: 5rem;

    background: ${({ background }) => background};

`

export const Contador = styled.h1`
    text-align: center;
    font-weight: 700;
    color: ${({ color }) => color};

`