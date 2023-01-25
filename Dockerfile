FROM python:3.9.13
WORKDIR /opt
RUN pip install itchat-uos==1.5.0.dev0 -i https://pypi.tuna.tsinghua.edu.cn/simple \
    && pip install --upgrade openai -i https://pypi.tuna.tsinghua.edu.cn/simple \
    && git clone https://github.com/shangkegit/chatgpt-on-wechat.git
WORKDIR /opt/chatgpt-on-wechat
CMD python app.py
