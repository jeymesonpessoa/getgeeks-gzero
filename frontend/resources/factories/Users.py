from faker import Faker
fake = Faker()

import bcrypt

def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed

def users_to_insert_db():
    return [
        factory_user('login'),
        factory_user('be_geek'),
        factory_user('attempt_be_geek'),
        factory_user('search_alien'),
        factory_user('search_common'),
        factory_user('searcher')
    ]

def factory_user(target):

    data = {

        'faker': {
            'name': fake.first_name(),
            'lastname': fake.last_name(),
            'email': fake.free_email(),
            'password': 'pwd123'
        },
        'wrong_email': {
            'name': 'Pedro',
            'lastname': 'de Lara',
            'email': 'pedro_dl*hotmail.com',
            'password': 'abc123'
        },
        'login': {
            'name': 'Jeymeson',
            'lastname': 'Costa',
            'email': 'jeymeson@hotmail.com',
            'password': 'pwd123'
        },
        'be_geek': {
            'name': 'Kim',
            'lastname': 'Dotcom',
            'email': 'kim@dot.com',
            'password': 'pwd123',
            'geek_profile': {
                'whats': '11999999999',
                'desc': 'Seu computador está lento? Talvez seja um vírus, posso fazer a manutenção do seu pc! Entre em contato comigo! :)',
                'printer_repair': 'Sim',
                'work': 'Remoto',
                'cost': '100'
            }
        },
        'attempt_be_geek': {
            'name': 'Dio',
            'lastname': 'Linux',
            'email': 'dio@linux.com',
            'password': 'pwd123',
            'geek_profile': {
                'whats': '85999999999',
                'desc': 'formato o seu pcdffdfsdfdfghhjhjhgfjhjhjjfjfjfgjfgjformato o seu pcdffdfsdfdfghgfhfghjhjhjhgfjhjhjjfjfjfgjfgjformato o seu pcdffdfsdfdfghgfhfghjhjhjhgfjhjhjjfjfjfgjfgjformato o seu pcdffdfsdfdfghgfhfghjhjhjhgfjhjhjjfjfjfgjfgjformdssdfdsfsdfdsdsfsdfd',
                'printer_repair': 'Não',
                'work': 'Remoto',
                'cost': '150'
            }
        },
        'searcher':{
            'name': 'Johnny',
            'lastname': 'Lawrence',
            'email': 'johnny@cobrakai.com',
            'password': 'pwd123'
        },
        'search_alien': {
            'name': 'Doc',
            'lastname': 'Ock',
            'email': 'dok@oscorp.com',
            'password': 'pwd123',
            'geek_profile': {
                'whatsapp': '11888888888',
                'desc': 'Olá! Eu conserto impressoras e deixo tudo bem ajeitaidinho kkkkkk. Conte, comigo@ Sou divertido. E ainda levo um cartucho preto e branco pra você.',
                'printer_repair': 'Sim',
                'work': 'Presencial',
                'cost': '100'
            }
        },
        'search_common': {
            'name': 'Peter',
            'lastname': 'Parker',
            'email': 'parker@oscorp.com',
            'password': 'pwd123',
            'geek_profile': {
                'whatsapp': '11999999999',
                'desc': 'Sou profissional que formata todos os tipos de computadores. Notebooks, celulares e tablets também.',
                'printer_repair': 'Não',
                'work': 'Presencial',
                'cost': '120'
            }
        }
    }

    return data[target]