import vk_api                                 # == #include <iostream>, например
from vk_api.longpoll import VkLongPoll, VkEventType

credentials_file = open('credentials', 'r')   #credentials_file - название переменной
login = credentials_file.readline()           #readline - считать строку до перевода
password = credentials_file.readline()        #read(5) - считать 5 символом

def captcha_handler(captcha):
    """
    Processing Captcha
    """
    key = input ('Enter captcha code {0}: '.format(captcha.get_url())) .strip()
    return captcha.try_again(key)

def main():
    """
    receiving message from VK through LongPoll
    """

    vk_session = vk_api (login, password, captcha_handler = captcha_handler)

    try:
        vk_session.auth(token_only = True)
    except vk_api.AuthError as error_msg:
        print(error_msg)
        return
