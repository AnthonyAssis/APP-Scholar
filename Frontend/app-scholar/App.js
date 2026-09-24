import React, { useState } from 'react';
import {
  View,
  Text,
  StyleSheet,
  Image,
  TouchableOpacity,
  TextInput,
} from 'react-native';

export default function App() {
  const [telaAtual, setTelaAtual] = useState('Home');

  if (telaAtual == 'Home') {
    return (
      <View style={styles.containerHome}>
        <View style={styles.header}>
          <Text style={styles.headerText}>Home</Text>

          <TouchableOpacity style={styles.btnTracinhos}>
            <Image
              source={require('./assets/tracinhos.png')}
              style={styles.tracinhos}
            />
          </TouchableOpacity>
        </View>

        <Image source={require('./assets/bg.png')} style={styles.bg} />

        <Image source={require('./assets/icon.png')} style={styles.logo} />

        <Text style={styles.titulo}>APP Scholar</Text>
        <Text style={styles.subtitulo}>Sistema acadêmico</Text>

        <View style={styles.buttonsContainer}>
          <TouchableOpacity
            style={styles.bdBtn}
            onPress={() => setTelaAtual('Alunos')}>
            <Text style={styles.text}>Alunos</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={styles.bdBtn}
            onPress={() => setTelaAtual('Responsáveis')}>
            <Text style={styles.text}>Responsáveis</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={styles.bdBtn}
            onPress={() => setTelaAtual('Professores')}>
            <Text style={styles.text}>Professores</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={styles.bdBtn}
            onPress={() => setTelaAtual('Coordenadores')}>
            <Text style={styles.text}>Coordenadores</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={styles.bdBtn}
            onPress={() => setTelaAtual('Avaliações')}>
            <Text style={styles.text}>Avaliações</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={styles.bdBtn}
            onPress={() => setTelaAtual('Boletins')}>
            <Text style={styles.text}>Boletins</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={styles.bdBtn}
            onPress={() => setTelaAtual('Disciplinas')}>
            <Text style={styles.text}>Disciplinas</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={styles.bdBtn}
            onPress={() => setTelaAtual('Cursos')}>
            <Text style={styles.text}>Cursos</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={styles.bdBtn}
            onPress={() => setTelaAtual('Turmas')}>
            <Text style={styles.text}>Turmas</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={styles.bdBtn}
            onPress={() => setTelaAtual('Matrículas')}>
            <Text style={styles.text}>Matrículas</Text>
          </TouchableOpacity>
        </View>

        <BottomBar setTelaAtual={setTelaAtual} />
      </View>
    );
  }

  if (telaAtual == 'Alunos') {
    return (
      <TelaInterna
        titulo="Alunos"
        descricao="Gerenciar alunos"
        setTelaAtual={setTelaAtual}
        t1="Cadastrar"
        t2="Consultar"
        t3="Editar"
        tela1="CadastrarAluno"
      />
    );
  }
  if (telaAtual == 'CadastrarAluno') {
    return (
      <CadastrarPessoa setTelaAtual={setTelaAtual} descricao="Dados do aluno" />
    );
  }
  if (telaAtual == 'Responsáveis') {
    return (
      <TelaInterna
        titulo="Responsáveis"
        descricao="Gerenciar responsáveis"
        setTelaAtual={setTelaAtual}
        t1="Cadastrar"
        t2="Consultar"
        t3="Editar"
      />
    );
  }

  if (telaAtual == 'Professores') {
    return (
      <TelaInterna
        titulo="Professores"
        descricao="Gerenciar professores"
        setTelaAtual={setTelaAtual}
        t1="Cadastrar"
        t2="Consultar"
        t3="Editar"
      />
    );
  }

  if (telaAtual == 'Coordenadores') {
    return (
      <TelaInterna
        titulo="Coordenadores"
        descricao="Gerenciar coordenadores"
        setTelaAtual={setTelaAtual}
        t1="Cadastrar"
        t2="Consultar"
        t3="Editar"
      />
    );
  }

  if (telaAtual == 'Avaliações') {
    return (
      <TelaInterna
        titulo="Avaliações"
        descricao="Gerenciar avaliações"
        setTelaAtual={setTelaAtual}
        t1="Cadastrar"
        t2="Consultar"
        t3="Editar"
      />
    );
  }

  if (telaAtual == 'Boletins') {
    return (
      <TelaInterna
        titulo="Boletins"
        descricao="Gerenciar boletins"
        setTelaAtual={setTelaAtual}
        t1="Cadastrar"
        t2="Consultar"
        t3="Editar"
      />
    );
  }

  if (telaAtual == 'Disciplinas') {
    return (
      <TelaInterna
        titulo="Disciplinas"
        descricao="Gerenciar disciplinas"
        setTelaAtual={setTelaAtual}
        t1="Cadastrar"
        t2="Consultar"
        t3="Editar"
      />
    );
  }

  if (telaAtual == 'Cursos') {
    return (
      <TelaInterna
        titulo="Cursos"
        descricao="Gerenciar cursos"
        setTelaAtual={setTelaAtual}
        t1="Cadastrar"
        t2="Consultar"
        t3="Editar"
      />
    );
  }

  if (telaAtual == 'Turmas') {
    return (
      <TelaInterna
        titulo="Turmas"
        descricao="Gerenciar turmas"
        setTelaAtual={setTelaAtual}
        t1="Cadastrar"
        t2="Consultar"
        t3="Editar"
      />
    );
  }

  if (telaAtual == 'Matrículas') {
    return (
      <TelaInterna
        titulo="Matrículas"
        descricao="Gerenciar matrículas"
        setTelaAtual={setTelaAtual}
        t1="Cadastrar"
        t2="Consultar"
        t3="Editar"
      />
    );
  }

  if (telaAtual == 'Sobre') {
    return (
      <View style={styles.containerSobre}>
        <View style={styles.header}>
          <Text style={styles.headerText}>Sobre</Text>
        </View>

        <View style={styles.containerSobreMain}>
          <Text style={styles.tituloInterno}>APP Scholar</Text>

          <Text style={styles.descricaoInterna}>
            Sistema acadêmico para gerenciamento de alunos, professores, cursos,
            turmas e informações escolares.
          </Text>
        </View>

        <BottomBar setTelaAtual={setTelaAtual} />
      </View>
    );
  }
}

function TelaInterna({
  titulo,
  descricao,
  t1,
  t2,
  t3,
  tela1,
  tela2,
  tela3,
  setTelaAtual,
}) {
  return (
    <View style={styles.containerSobre}>
      <View style={styles.header}>
        <TouchableOpacity
          style={styles.btnVoltar}
          onPress={() => setTelaAtual('Home')}>
          <Image
            style={styles.backButton}
            source={require('./assets/back.png')}
          />
        </TouchableOpacity>

        <Text style={styles.headerText}>{titulo}</Text>
      </View>

      <View style={styles.containerSobreMain}>
        <Text style={styles.tituloInterno}>{descricao}</Text>

        <View style={styles.abasContainer}>
          <TouchableOpacity
            style={styles.aba}
            onPress={() => setTelaAtual(tela1)}>
            <Text style={styles.abaText}>{t1}</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={styles.aba}
            onPress={() => setTelaAtual(tela2)}>
            <Text style={styles.abaText}>{t2}</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={styles.aba}
            onPress={() => setTelaAtual(tela3)}>
            <Text style={styles.abaText}>{t3}</Text>
          </TouchableOpacity>
        </View>
      </View>

      <BottomBar setTelaAtual={setTelaAtual} />
    </View>
  );
}

function CadastrarPessoa({ descricao, nome, setNome, setTelaAtual }) {
  return (
    <View style={styles.containerCadastrar}>
      <View style={styles.containerCadastrarMain}>
        <Text style={styles.tituloInterno}>{descricao}</Text>

        <View style={styles.inputsCadastro}>
          <text style={styles.label}>Nome Completo</text>
          <TextInput
            placeholder="Digite o nome completo"
            value={nome}
            onChangeText={setNome}
            style={styles.textInput}
          />
          <text style={styles.label}>Data de nascimento</text>
          <TextInput
            placeholder="dd/mm/aaaa"
            value={nome}
            onChangeText={setNome}
            style={styles.textInput}
          />
          <text style={styles.label}>CPF</text>
          <TextInput
            placeholder="0000.000.000-00"
            value={nome}
            onChangeText={setNome}
            style={styles.textInput}
          />
          <text style={styles.label}>Endereço</text>
          <TextInput
            placeholder="Digite o endereço do aluno"
            value={nome}
            onChangeText={setNome}
            style={styles.textInput}
          />
          <text style={styles.label}>Email</text>
          <TextInput
            placeholder="digite o email do aluno"
            value={nome}
            onChangeText={setNome}
            style={styles.textInput}
          />
          <text style={styles.label}>Telefone</text>
          <TextInput
            placeholder="(12) 99999-9999"
            value={nome}
            onChangeText={setNome}
            style={styles.textInput}
          />
          <text style={styles.label}>Curso</text>
          <TextInput
            placeholder="selecione o curso"
            value={nome}
            onChangeText={setNome}
            style={styles.textInput}
          />
          <text style={styles.label}>Turma</text>
          <TextInput
            placeholder="selecione a turma"
            value={nome}
            onChangeText={setNome}
            style={styles.textInput}
          />
        </View>
      </View>

      <BottomBar setTelaAtual={setTelaAtual} />
    </View>
  );
}

function BottomBar({ setTelaAtual }) {
  return (
    <View style={styles.bottomBar}>
      <TouchableOpacity
        style={styles.bottomButton}
        onPress={() => setTelaAtual('Home')}>
        <Image
          style={styles.bottomButtonIMG}
          source={require('./assets/homeIcon.png')}
        />
      </TouchableOpacity>

      <TouchableOpacity
        style={styles.bottomButton}
        onPress={() => setTelaAtual('Sobre')}>
        <Image
          style={styles.bottomButtonIMG}
          source={require('./assets/aboutIcon.png')}
        />
      </TouchableOpacity>
    </View>
  );
}

const styles = StyleSheet.create({
  header: {
    flexDirection: 'row',
    justifyContent: 'center',
    position: 'absolute',
    top: 0,
    height: 100,
    width: '100%' ,
    backgroundColor: '#5D7BE8',
    zIndex: 2,
  },

  headerText: {
    color: '#FFFFFF',
    fontSize: 25,
    top: 60,
  },

  tracinhos: {
    width: 40,
    height: 40,
  },

  btnTracinhos: {
    position: 'absolute',
    left: '4%',
    top: 50,
  },

  containerHome: {
    flex: 1,
    alignItems: 'center',
    backgroundColor: '#ecf0f1',
  },

  bg: {
    position: 'absolute',
    width: '100%',
    height: 200,
    top: 100,
  },

  logo: {
    width: 150,
    height: 100,
    marginTop: 110,
    marginBottom: 10,
  },

  titulo: {
    fontSize: 32,
    fontWeight: 'bold',
    color: '#5D7BE8',
  },

  subtitulo: {
    fontSize: 18,
    marginBottom: 10,
    color: '#666',
  },

  buttonsContainer: {
    width: '90%',
    height: '50%',

    flexDirection: 'row',
    flexWrap: 'wrap',

    justifyContent: 'space-evenly',
    alignContent: 'space-evenly',
  },

  bdBtn: {
    width: '45%',
    height: '15%',

    backgroundColor: '#ffffff',

    borderRadius: 10,

    boxShadow: '0 5px 0 0 #D6D6D6',

    display: 'flex',
    justifyContent: 'center',
    alignItems: 'center',
  },

  text: {
    fontSize: 18,
    fontWeight: 'bold',
    color: '#8F8F8F',
  },

  containerSobre: {
    flex: 1,
    alignItems: 'center',
    backgroundColor: '#ecf0f1',
  },

  containerSobreMain: {
    flex: 1,
    width: '90%',
    alignItems: 'center',
    justifyContent: 'center',
    paddingBottom: 80,
    marginTop: '30%',
  },

  containerCadastrar: {
    flex: 1,
    alignItems: 'center',
    backgroundColor: '#ecf0f1',
  },

  containerCadastrarMain: {
    flex: 1,
    width: '80%',
    alignItems: 'center',
    justifyContent: 'center',
    paddingBottom: 80,
    marginTop: '30%',
  },

  inputsCadastro: {
    width: '100%',
    height: 500,

    justifyContent: 'space-evenly',
  },

  textInput: {
    backgroundColor: '#ffffff',
    width: '100%',
    height: 40,

    borderRadius: 7,
  },

  tituloInterno: {
    fontSize: 29,
    fontWeight: 'bold',
    color: '#5D7BE8',
    marginBottom: 15,
    textAlign: 'center',
  },

  descricaoInterna: {
    fontSize: 18,
    color: '#666',
    textAlign: 'center',
    paddingHorizontal: 20,
  },

  btnVoltar: {
    position: 'absolute',
    left: 10,
    top: 48,
    zIndex: 3,
  },

  backButton: {
    width: 40,
    height: 40,
  },

  bottomBar: {
    position: 'absolute',
    bottom: 0,
    left: 0,
    right: 0,

    height: 80,

    backgroundColor: '#ffffff',

    flexDirection: 'row',
    justifyContent: 'space-around',
    alignItems: 'center',

    borderTopWidth: 1,
    borderTopColor: '#dddddd',
  },

  bottomButtonIMG: {
    width: 40,
    height: 40,
  },

  abasContainer: {
    flexDirection: 'column',
    justifyContent: 'space-evenly',
    width: '90%',
    height: 300,
  },

  aba: {
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#ffffff',
    boxShadow: '0 5px 0 0 #D6D6D6',

    height: '25%',
    width: '100%',
    borderRadius: 10,
  },

  abaText: {
    fontSize: 20,
    fontWeight: 'bold',
    color: '#8F8F8F',
  },
});
