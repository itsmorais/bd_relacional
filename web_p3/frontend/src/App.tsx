import BotaoResetar from './components/Resetar';
import Botao from './components/Botao';
import { MeuProvider } from './contexts';
function App() {
  return (
    <div className="App">
      <MeuProvider>
        <Botao />
        <BotaoResetar />
      </MeuProvider>
    </div>
  );
}

export default App;
