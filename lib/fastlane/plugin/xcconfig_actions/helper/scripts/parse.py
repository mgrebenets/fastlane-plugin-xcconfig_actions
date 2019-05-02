from bs4 import BeautifulSoup
import re

soup = BeautifulSoup(open("page.html"), "html.parser")

entries = soup.find_all("div", id=re.compile("dev.*"))

title_re = re.compile(".*\((.*)\)")
settings = []
for e in entries:
    text = e.find("h2", class_="Name").text
    m = title_re.match(text)
    if m == None:
        settings.append(text)
    else:
        settings.append(m.group(1))

print settings
