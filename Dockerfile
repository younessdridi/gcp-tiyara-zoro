FROM teddysun/v2ray:latest

# ضبط المتغيرات لتقليل استهلاك الذاكرة وزيادة السرعة
ENV V2RAY_VMESS_AEAD_FORCED=false

COPY config.json /etc/v2ray/config.json

# تأكد أن البورت 8080 مفتوح تماماً
EXPOSE 8080

CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]
