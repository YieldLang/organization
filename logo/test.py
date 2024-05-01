def G(lang):
    return f"Hi {yield (*lang, )}!"

g = G(('py', 'js', 'cpp', ...))

print(next(g))
try:
    print(g.send('YieldLang'))
except StopIteration as e:
    print(e.value)