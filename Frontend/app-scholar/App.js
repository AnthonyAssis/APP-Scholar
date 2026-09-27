import React, { useState, useEffect } from 'react';
import {
  View,
  Text,
  StyleSheet,
  Image,
  TouchableOpacity,
  TextInput,
  Alert,
  ScrollView,
  Keyboard,
} from 'react-native';
import { Picker } from '@react-native-picker/picker';
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
        tela2="ConsultarAlunos"
        tela3="EditarAlunos"
      />
    );
  }
  if (telaAtual == 'CadastrarAluno') {
    return (
      <CadastrarAluno
        setTelaAtual={setTelaAtual}
        descricao="Dados do aluno"
        titulo="Aluno"
      />
    );
  }
  if (telaAtual == 'ConsultarAlunos') {
    return <ConsultarAlunos setTelaAtual={setTelaAtual} />;
  }

  if (telaAtual == 'EditarAlunos') {
    return <EditarAlunos setTelaAtual={setTelaAtual} />;
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

function CadastrarAluno({ descricao, setTelaAtual, titulo }) {
  const [nome, setNome] = useState('');
  const [dataNascimento, setDataNascimento] = useState('');
  const [cpf, setCpf] = useState('');
  // responsável --------------------------------------------------------------
  const [responsavel, setResponsavel] = useState('');
  const [cpfResponsavel, setCpfResponsavel] = useState('');
  const [parentesco, setParentesco] = useState('');

  // responsavel ------------------------------------------------------------
  const [endereco, setEndereco] = useState('');
  const [email, setEmail] = useState('');
  const [telefone, setTelefone] = useState('');
  const [curso, setCurso] = useState('');

  const [tecladoAberto, setTecladoAberto] = useState(false);

  useEffect(() => {
    const tecladoAbrindo = Keyboard.addListener('keyboardWillShow', () => {
      setTecladoAberto(true);
    });

    const tecladoFechando = Keyboard.addListener('keyboardDidHide', () => {
      setTecladoAberto(false);
    });

    return () => {
      tecladoAbrindo.remove();
      tecladoFechando.remove();
    };
  }, []);

  const cadastrarAluno = async () => {
    const dataBanco = dataNascimento.split('/').reverse().join('-');

    const cpfBanco = cpf.replace(/\D/g, '');

    const cpfResponsavelBanco = cpfResponsavel.replace(/\D/g, '');

    const telefoneBanco = telefone.replace(/\D/g, '');

    const dados = {
      nome: nome,
      data_nascimento: dataBanco,
      cpf: cpfBanco,
      telefone: telefoneBanco,
      email: email,
      responsavel: responsavel,
      cpf_responsavel: cpfResponsavelBanco,
      parentesco: parentesco,
      endereco: endereco,
      curso: curso,
    };

    try {
      const resposta = await fetch(
        'http://192.168.15.8/app_scholar_api/cadastrar_aluno.php',
        {
          method: 'POST',

          headers: {
            'Content-Type': 'application/json',
          },

          body: JSON.stringify(dados),
        }
      );

      const resultado = await resposta.json();

      console.log(resultado);

      if (resultado.sucesso) {
        Alert.alert('Sucesso!', 'Aluno cadastrado com sucesso!');
      } else {
        Alert.alert('Erro', resultado.erro || resultado.mensagem);
      }
    } catch (erro) {
      console.log('ERRO COMPLETO:', erro);

      Alert.alert('Erro', String(erro));
    }
  };

  return (
    <View style={styles.containerCadastrar}>
      <View style={styles.header}>
        <TouchableOpacity
          style={styles.btnVoltar}
          onPress={() => setTelaAtual('Alunos')}>
          <Image
            style={styles.backButton}
            source={require('./assets/back.png')}
          />
        </TouchableOpacity>

        <Text style={styles.headerText}>{titulo}</Text>
      </View>

      <ScrollView
        style={{ width: '100%' }}
        contentContainerStyle={styles.scrollCadastro}
        showsVerticalScrollIndicator={false}>
        <View style={styles.containerCadastrarMain}>
          <Text style={styles.tituloInterno}>{descricao}</Text>

          <View style={styles.inputsCadastro}>
            <Text style={styles.label}>Nome Completo</Text>

            <TextInput
              placeholder="Digite o nome completo"
              value={nome}
              onChangeText={setNome}
              style={styles.textInput}
            />

            <Text style={styles.label}>Data de nascimento</Text>

            <TextInput
              placeholder="dd/mm/aaaa"
              value={dataNascimento}
              onChangeText={(texto) => {
                const numeros = texto.replace(/\D/g, '');

                let formatado = numeros;

                if (numeros.length > 2) {
                  formatado = numeros.slice(0, 2) + '/' + numeros.slice(2);
                }

                if (numeros.length > 4) {
                  formatado =
                    numeros.slice(0, 2) +
                    '/' +
                    numeros.slice(2, 4) +
                    '/' +
                    numeros.slice(4, 8);
                }

                setDataNascimento(formatado);
              }}
              keyboardType="numeric"
              style={styles.textInput}
            />

            <Text style={styles.label}>CPF</Text>

            <TextInput
              placeholder="000.000.000-00"
              value={cpf}
              onChangeText={(texto) => {
                const numeros = texto.replace(/\D/g, '');

                let formatado = numeros;

                if (numeros.length > 3) {
                  formatado = numeros.slice(0, 3) + '.' + numeros.slice(3);
                }

                if (numeros.length > 6) {
                  formatado =
                    numeros.slice(0, 3) +
                    '.' +
                    numeros.slice(3, 6) +
                    '.' +
                    numeros.slice(6);
                }

                if (numeros.length > 9) {
                  formatado =
                    numeros.slice(0, 3) +
                    '.' +
                    numeros.slice(3, 6) +
                    '.' +
                    numeros.slice(6, 9) +
                    '-' +
                    numeros.slice(9, 11);
                }

                setCpf(formatado);
              }}
              keyboardType="numeric"
              style={styles.textInput}
            />

            <Text style={styles.label}>Endereço</Text>
            <TextInput
              placeholder="Digite a rua onde o aluno mora"
              value={endereco}
              onChangeText={setEndereco}
              style={styles.textInput}
            />

            <Text style={styles.label}>Responsável</Text>
            <TextInput
              placeholder="Nome do(a) responsável"
              value={responsavel}
              onChangeText={setResponsavel}
              style={styles.textInput}
            />
            <Text style={styles.label}>CPF do responsável</Text>
            <TextInput
              placeholder="000.000.000-00"
              value={cpfResponsavel}
              onChangeText={(texto) => {
                const numeros = texto.replace(/\D/g, '');

                let formatado = numeros;

                if (numeros.length > 3) {
                  formatado = numeros.slice(0, 3) + '.' + numeros.slice(3);
                }

                if (numeros.length > 6) {
                  formatado =
                    numeros.slice(0, 3) +
                    '.' +
                    numeros.slice(3, 6) +
                    '.' +
                    numeros.slice(6);
                }

                if (numeros.length > 9) {
                  formatado =
                    numeros.slice(0, 3) +
                    '.' +
                    numeros.slice(3, 6) +
                    '.' +
                    numeros.slice(6, 9) +
                    '-' +
                    numeros.slice(9, 11);
                }

                setCpfResponsavel(formatado);
              }}
              keyboardType="numeric"
              style={styles.textInput}
            />

            <Text style={styles.label}>Parentesco</Text>
            <TextInput
              placeholder="Ex: Mãe, Pai, Outro..."
              value={parentesco}
              onChangeText={setParentesco}
              style={styles.textInput}
            />

            <Text style={styles.label}>Email</Text>

            <TextInput
              placeholder="Digite o email do aluno"
              value={email}
              onChangeText={setEmail}
              style={styles.textInput}
            />

            <Text style={styles.label}>Telefone</Text>

            <TextInput
              placeholder="(12) 99999-9999"
              value={telefone}
              onChangeText={(texto) => {
                const numeros = texto.replace(/\D/g, '');

                let formatado = numeros;

                if (numeros.length > 2) {
                  formatado =
                    '(' + numeros.slice(0, 2) + ') ' + numeros.slice(2);
                }

                if (numeros.length > 7) {
                  formatado =
                    '(' +
                    numeros.slice(0, 2) +
                    ') ' +
                    numeros.slice(2, 7) +
                    '-' +
                    numeros.slice(7, 11);
                }

                setTelefone(formatado);
              }}
              keyboardType="numeric"
              style={styles.textInput}
            />

            <Text style={styles.label}>Curso</Text>

            <TextInput
              placeholder="Digite o curso"
              value={curso}
              onChangeText={setCurso}
              style={styles.textInput}
            />

            <TouchableOpacity
              style={styles.cadastroBTN}
              onPress={cadastrarAluno}>
              <Text>Cadastrar</Text>
            </TouchableOpacity>
          </View>
        </View>
      </ScrollView>
    </View>
  );
}

function ConsultarAlunos({ setTelaAtual }) {
  const [alunos, setAlunos] = useState([]);

  useEffect(() => {
    buscarAlunos();
  }, []);

  const buscarAlunos = async () => {
    try {
      const resposta = await fetch(
        'http://192.168.15.8/app_scholar_api/listar_alunos.php'
      );

      const resultado = await resposta.json();

      console.log(resultado);

      if (resultado.sucesso) {
        setAlunos(resultado.alunos);
      } else {
        Alert.alert('Erro', resultado.erro || resultado.mensagem);
      }
    } catch (erro) {
      console.log('ERRO:', erro);

      Alert.alert('Erro', 'Não foi possível consultar os alunos.');
    }
  };

  return (
    <View style={styles.containerSobre}>
      <View style={styles.header}>
        <TouchableOpacity
          style={styles.btnVoltar}
          onPress={() => setTelaAtual('Alunos')}>
          <Image
            style={styles.backButton}
            source={require('./assets/back.png')}
          />
        </TouchableOpacity>

        <Text style={styles.headerText}>Consultar Alunos</Text>
      </View>

      <View style={styles.containerConsultaAlunos}>
        <Text style={styles.tituloInterno}>Lista de alunos</Text>

        <ScrollView
          style={{ width: '100%' }}
          contentContainerStyle={{ alignItems: 'center' }}
          showsVerticalScrollIndicator={true}>
          {alunos.map((aluno) => (
            <View style={styles.cardAluno}>
              <Text style={styles.nomeAluno}>{aluno.nome_completo}</Text>
              <Text>
                CPF: {aluno.CPF.slice(0, 3)}.{aluno.CPF.slice(3, 6)}.
                {aluno.CPF.slice(6, 9)}-{aluno.CPF.slice(9, 11)}
              </Text>
              <Text>
                Data de nascimento:{' '}
                {aluno.data_nascimento.split('-').reverse().join('/')}
              </Text>
              <Text>Responsável: {aluno.responsavel}</Text>
              <Text>Endereço: {aluno.endereco}</Text>
              <Text>Email: {aluno.email}</Text>
              <Text>
                Telefone: ({aluno.telefone.slice(0, 2)}){' '}
                {aluno.telefone.slice(2, 7)}-{aluno.telefone.slice(7, 11)}
              </Text>
              <Text>Curso: {aluno.curso}</Text>
            </View>
          ))}
        </ScrollView>
      </View>
    </View>
  );
}

function EditarAlunos({ setTelaAtual }) {
  const [alunos, setAlunos] = useState([]);
  const [alunoSelecionado, setAlunoSelecionado] = useState(null);
  const [modoEdicao, setModoEdicao] = useState(false);

  useEffect(() => {
    buscarAlunos();
  }, []);

  const buscarAlunos = async () => {
    try {
      const resposta = await fetch(
        'http://192.168.15.8/app_scholar_api/listar_alunos.php'
      );

      const resultado = await resposta.json();

      console.log(resultado);

      if (resultado.sucesso) {
        setAlunos(resultado.alunos);
      } else {
        Alert.alert('Erro', resultado.erro || resultado.mensagem);
      }
    } catch (erro) {
      console.log('ERRO:', erro);
      Alert.alert('Erro', 'Não foi possível consultar os alunos.');
    }
  };

  const abrirEdicao = (aluno) => {
    setAlunoSelecionado({
      ...aluno,

      data_nascimento: aluno.data_nascimento.split('-').reverse().join('/'),

      CPF: aluno.CPF.replace(/\D/g, '').replace(
        /(\d{3})(\d{3})(\d{3})(\d{2})/,
        '$1.$2.$3-$4'
      ),

      telefone: aluno.telefone
        .replace(/\D/g, '')
        .replace(/(\d{2})(\d{5})(\d{4})/, '($1) $2-$3'),
    });

    setModoEdicao(true);
  };

  const salvarAlteracoes = async () => {
    try {
      const dataBanco = alunoSelecionado.data_nascimento
        .split('/')
        .reverse()
        .join('-');

      const cpfBanco = alunoSelecionado.CPF.replace(/\D/g, '');

      const telefoneBanco = alunoSelecionado.telefone.replace(/\D/g, '');

      const dados = {
        id_aluno: alunoSelecionado.id_aluno,
        nome: alunoSelecionado.nome_completo,
        data_nascimento: dataBanco,
        cpf: cpfBanco,
        telefone: telefoneBanco,
        email: alunoSelecionado.email,
        endereco: alunoSelecionado.endereco,
        curso: alunoSelecionado.curso,
      };

      console.log('DADOS PARA EDITAR:', dados);

      const resposta = await fetch(
        'http://192.168.15.8/app_scholar_api/editar_aluno.php',
        {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify(dados),
        }
      );

      const resultado = await resposta.json();

      console.log('RESPOSTA:', resultado);

      if (resultado.sucesso) {
        Alert.alert('Sucesso', 'Aluno atualizado com sucesso!');

        setModoEdicao(false);
        setAlunoSelecionado(null);

        buscarAlunos();
      } else {
        Alert.alert(
          'Erro',
          resultado.erro ||
            resultado.mensagem ||
            'Não foi possível atualizar o aluno.'
        );
      }
    } catch (erro) {
      console.log('ERRO:', erro);
      Alert.alert('Erro', 'Não foi possível atualizar os dados do aluno.');
    }
  };

  if (modoEdicao && alunoSelecionado) {
    return (
      <View style={styles.containerSobre}>
        <View style={styles.header}>
          <TouchableOpacity
            style={styles.btnVoltar}
            onPress={() => {
              setModoEdicao(false);
              setAlunoSelecionado(null);
            }}>
            <Image
              style={styles.backButton}
              source={require('./assets/back.png')}
            />
          </TouchableOpacity>

          <Text style={styles.headerText}>Editar Aluno</Text>
        </View>

        <ScrollView
          style={{ width: '90%' }}
          contentContainerStyle={{
            alignItems: 'center',
            paddingTop: 120,
            paddingBottom: 30,
          }}>
          <Text style={styles.label}>Nome Completo</Text>

          <TextInput
            style={styles.textInput}
            value={alunoSelecionado.nome_completo}
            onChangeText={(texto) => {
              setAlunoSelecionado({
                ...alunoSelecionado,
                nome_completo: texto,
              });
            }}
          />

          <Text style={styles.label}>Data de Nascimento</Text>

          <TextInput
            style={styles.textInput}
            value={alunoSelecionado.data_nascimento}
            keyboardType="numeric"
            maxLength={10}
            onChangeText={(texto) => {
              let valor = texto.replace(/\D/g, '');

              if (valor.length > 2) {
                valor = valor.slice(0, 2) + '/' + valor.slice(2);
              }

              if (valor.length > 5) {
                valor = valor.slice(0, 5) + '/' + valor.slice(5);
              }

              setAlunoSelecionado({
                ...alunoSelecionado,
                data_nascimento: valor,
              });
            }}
          />

          <Text style={styles.label}>CPF</Text>

          <TextInput
            style={styles.textInput}
            value={alunoSelecionado.CPF}
            keyboardType="numeric"
            maxLength={14}
            onChangeText={(texto) => {
              let valor = texto.replace(/\D/g, '');

              if (valor.length > 3) {
                valor = valor.slice(0, 3) + '.' + valor.slice(3);
              }

              if (valor.length > 7) {
                valor = valor.slice(0, 7) + '.' + valor.slice(7);
              }

              if (valor.length > 11) {
                valor = valor.slice(0, 11) + '-' + valor.slice(11);
              }

              setAlunoSelecionado({
                ...alunoSelecionado,
                CPF: valor,
              });
            }}
          />

          <Text style={styles.label}>Telefone</Text>

          <TextInput
            style={styles.textInput}
            value={alunoSelecionado.telefone}
            keyboardType="numeric"
            maxLength={15}
            onChangeText={(texto) => {
              let valor = texto.replace(/\D/g, '');

              if (valor.length > 2) {
                valor = '(' + valor.slice(0, 2) + ') ' + valor.slice(2);
              }

              if (valor.length > 10) {
                valor = valor.slice(0, 10) + '-' + valor.slice(10);
              }

              setAlunoSelecionado({
                ...alunoSelecionado,
                telefone: valor,
              });
            }}
          />

          <Text style={styles.label}>E-mail</Text>

          <TextInput
            style={styles.textInput}
            value={alunoSelecionado.email}
            keyboardType="email-address"
            onChangeText={(texto) => {
              setAlunoSelecionado({
                ...alunoSelecionado,
                email: texto,
              });
            }}
          />

          <Text style={styles.label}>Endereço</Text>

          <TextInput
            style={styles.textInput}
            value={alunoSelecionado.endereco}
            onChangeText={(texto) => {
              setAlunoSelecionado({
                ...alunoSelecionado,
                endereco: texto,
              });
            }}
          />

          <Text style={styles.label}>Curso</Text>

          <View style={styles.pickerContainer}>
            <Picker
              selectedValue={alunoSelecionado.curso}
              onValueChange={(valor) => {
                setAlunoSelecionado({
                  ...alunoSelecionado,
                  curso: valor,
                });
              }}
              style={styles.picker}>
              <Picker.Item label="Selecione um curso" value="" />

              <Picker.Item label="ADS" value="ADS" />

              <Picker.Item
                label="Administração de Empresas"
                value="Administração de Empresas"
              />

              <Picker.Item label="Enfermagem" value="Enfermagem" />

              <Picker.Item label="Direito" value="Direito" />

              <Picker.Item
                label="Engenharia de Software"
                value="Engenharia de Software"
              />
            </Picker>
          </View>

          <TouchableOpacity
            style={styles.btnSalvarEdicao}
            onPress={salvarAlteracoes}>
            <Text style={styles.textBtnSalvarEdicao}>Salvar Alterações</Text>
          </TouchableOpacity>
        </ScrollView>
      </View>
    );
  }

  return (
    <View style={styles.containerSobre}>
      <View style={styles.header}>
        <TouchableOpacity
          style={styles.btnVoltar}
          onPress={() => setTelaAtual('Alunos')}>
          <Image
            style={styles.backButton}
            source={require('./assets/back.png')}
          />
        </TouchableOpacity>

        <Text style={styles.headerText}>Editar Alunos</Text>
      </View>

      <View style={styles.containerConsultaAlunos}>
        <Text style={styles.tituloInterno}>Selecione um aluno</Text>

        <ScrollView
          style={{ width: '100%' }}
          contentContainerStyle={{
            alignItems: 'center',
          }}
          showsVerticalScrollIndicator={true}>
          {alunos.map((aluno) => (
            <TouchableOpacity
              key={aluno.id_aluno}
              style={styles.cardAluno}
              onPress={() => abrirEdicao(aluno)}>
              <Text style={styles.nomeAluno}>{aluno.nome_completo}</Text>

              <Text>CPF: {aluno.CPF}</Text>
            </TouchableOpacity>
          ))}
        </ScrollView>
      </View>
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
    width: '100%',
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

    boxShadow: '0 3px 0 0 #D6D6D6',

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

  label: {
    fontSize: 13,
    marginBottom: 5,
    fontFamily: 'sans-serif',
    width: '100%',
  },
  tituloInterno: {
    fontSize: 23,
    fontWeight: 'bold',
    color: '#5D7BE8',
    marginBottom: 12,
    marginTop: -12,
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
    boxShadow: '0 3px 0 0 #D6D6D6',

    height: '25%',
    width: '100%',
    borderRadius: 10,
  },

  abaText: {
    fontSize: 20,
    fontWeight: 'bold',
    color: '#8F8F8F',
  },

  // área do cadastro aluno -------------------------------------------------------------------------
  inputsCadastro: {
    width: '100%',
    justifyContent: 'space-evenly',
    marginTop: 20,
  },

  containerCadastrar: {
    display: 'flex',
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: '#ecf0f1',
  },

  containerCadastrarMain: {
    flex: 1,
    width: '80%',
    alignItems: 'center',
    justifyContent: 'flex-start',
    paddingBottom: 80,
    paddingTop: 20,
  },

  cadastroBTN: {
    width: '100%',
    height: '8%',

    backgroundColor: '#5D7BE8',
    color: '#ffffff',
    fontSize: 18,
    fontFamily: 'sans-serif',
    borderRadius: 10,
    marginTop: 15,

    boxShadow: '0 3px 0 0 #D6D6D6',

    display: 'flex',
    justifyContent: 'center',
    alignItems: 'center',
  },
  textInput: {
    backgroundColor: '#ffffff',
    color: '#333333',
    width: '100%',
    height: 35,
    fontSize: 16,
    boxShadow: '0 3px 0 0 #D6D6D6',
    borderRadius: 7,
    marginBottom: 10, 
    padding: '0 0 0 15px',
  },
  scrollCadastro: {
    alignItems: 'center',
    paddingTop: 120,
    paddingBottom: 110,
  },
  cardAluno: {
    width: '90%',
    backgroundColor: '#ffffff',
    borderRadius: 10,
    padding: 15,
    marginBottom: 12,
    borderWidth: 1,
    borderColor: '#dddddd',
  },

  // consulta do aluno -----------------------------------

  containerConsultaAlunos: {
    flex: 1,
    width: '95%',
    alignItems: 'center',
    justifyContent: 'center',
    marginTop: '35%',
  },
  nomeAluno: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 5,
  },

  idAluno: {
    fontSize: 14,
  },
  pickerContainer: {
    width: '100%',
    height: 50,
    backgroundColor: '#FFFFFF',
    borderRadius: 7,
    marginBottom: 15,
    justifyContent: 'center',
    boxShadow: '0 3px 0 0 #D6D6D6',
  },

  picker: {
    width: '100%',
    height: 50,
  },

  btnSalvarEdicao: {
    width: '80%',
    height: 50,
    backgroundColor: '#5D7BE8',
    borderRadius: 10,
    justifyContent: 'center',
    alignItems: 'center',
    marginTop: 15,
    marginBottom: 20,
    boxShadow: '0 3px 0 0 #D6D6D6',
  },

  textBtnSalvarEdicao: {
    color: '#FFFFFF',
    fontSize: 17,
    fontWeight: 'bold',
  },
});
