from faker import Faker
fake = Faker()

import bcrypt

def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed

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
        }
    }

    return data[target]