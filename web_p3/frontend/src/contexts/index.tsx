import React, { createContext, useContext, useEffect, useState } from "react";
import { list } from "../services/list";
import { Color } from "../types";

export const MeuContexto = createContext<Color[]>([]);

function MeuProvider({ children }) {
    const [data, setData] = useState<Color[]>([]);

    useEffect(() => {
        list.get('').then((res) => {
            setData(res.data);
        });
    }, []);

    return (
        <MeuContexto.Provider value={data}>
            {children}
        </MeuContexto.Provider>
    );
}

function useMeuContexto() {
    const context = useContext(MeuContexto);
    return context;
}

export { MeuProvider, useMeuContexto };
