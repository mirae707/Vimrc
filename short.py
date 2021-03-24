import pyupbit
import time

ticker = "KRW-TRX"

# 객체 생성
f = open("upbit.txt")
lines = f.readlines()
access = lines[0].strip()
secret = lines[1].strip()
f.close()
upbit = pyupbit.Upbit(access, secret)

operation = True

# 매수 조건 정보 가져오기 bull = 상승장, bear = 하락장
def get_market_infos(ticker):
    try:
        df = pyupbit.get_ohlcv(ticker)
        ma5 = df['close'].rolling(window=1).mean()
        last_ma5 = ma5[-2]
        price = pyupbit.get_current_price(ticker)
        minutes_ago = pyupbit.get_ohlcv(ticker, interval="minute1", count=60)['close'][0]
        state = None
        if price > last_ma5 and minutes_ago < last_ma5 and (price - minutes_ago) > 0:
            state = "bull"
        else:
            state = "bear"

        print(ticker, ":", price, last_ma5, state)

        return price, last_ma5, state
    except:
        return None, None, None

# 실행
while True:
    if operation == True:
# 매수 시도
        data = []
        data = get_market_infos(ticker)
        # 상승장일 때 매수
        if data[2] == "bull":
            print("Buy:", data[0])
            upbit.buy_market_order(ticker, 10000)
            coin_balance = upbit.get_balance(ticker)
            upbit.sell_limit_order(ticker, round((data[0] * 1.05), 2), coin_balance)
            operation = False
        else:
            print("Keep")
    else:
        coin_balance = upbit.get_balance(ticker)
        if coin_balance == 0:
            print("Success selling it. Kepp Trading!")
            operation = True
        else :
            limit = round(upbit.get_avg_buy_price(ticker) * 0.9)
            if limit == pyupbit.get_current_price(ticker) :
                upbit.sell_market_order(ticker, coin_balance)
                operation = True
    time.sleep(2)
