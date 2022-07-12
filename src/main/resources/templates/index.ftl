<#ftl encoding='UTF-8'>
<#-- @ftlvariable name="articles" type="kotlin.collections.List<com.example.models.Article>" -->
<#import "_layout.ftl" as layout />
<@layout.header>
    <form action="/" method="post">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-2"> </div>
                <div class="col-md-6">
                    <div class="row justify-content-center front-elements">
                        <div class="col-md-5" align="right">
                            <label class="front-labels" for="lvl">Poziom</label>
                            <input id="lvl" style="width:60px;" type="number" value="100" min="0" max="300">
                        </div>
                        <div class="col-md-7">
                            Liczba bonusów: 0/72
                        </div>
                    </div>
                    <div class="row justify-content-center front-elements">
                        <div class="col-md-5" align="right">
                            <label class="front-labels" for="rarity">Jakość</label>
                            <input id="rarity" style="width:60px;" type="number" value="100" min="0" max="300">
                        </div>
                        <div class="col-md-7">
                            <button class="toggle">W</button>
                            <button class="toggle">B</button>
                            <button class="toggle">P</button>
                            <button class="toggle">M</button>
                            <button class="toggle">T</button>
                            <button class="toggle">H</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-2"> </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <div class="item-window">
                        <div class="item-name-window"></div>
                    </div>
                </div>
                <div class="grid-container col-md-8">
                    <div class="grid-element">
                        <label for="da">Wszystkie cechy</label>
                        <input id="da" type="number" value="1" min="0" max="5">
                    </div>
                    <div class="grid-element">
                        <label for="hp">Życie</label>
                        <input id="hp" type="number" value="0" min="0" max="5">
                    </div>
                    <div class="grid-element">
                        <label for="crit">Cios krytyczny</label>
                        <input id="crit" type="number" value="0" min="0" max="4">
                    </div>

                    <div class="grid-element">
                        <label for="ds">Siła</label>
                        <input id="ds" type="number" value="2" min="0" max="5">
                    </div>
                    <div class="grid-element">
                        <label for="heal">Leczenie</label>
                        <input id="heal" type="number" value="0" min="0" max="2">
                    </div>
                    <div class="grid-element">
                        <label for="skf">s.k. fizycznego</label>
                        <input id="skf" type="number" value="0" min="0" max="5">
                    </div>

                    <div class="grid-element">
                        <label for="di">Intelekt</label>
                        <input id="di" type="number" value="3" min="0" max="5">
                    </div>
                    <div class="grid-element">
                        <label for="ac">Pancerz</label>
                        <input id="ac" type="number" value="0" min="0" max="5">
                    </div>
                    <div class="grid-element">
                        <label for="skm">s.k. magicznego</label>
                        <input id="skm" type="number" value="0" min="0" max="5">
                    </div>

                    <div class="grid-element">
                        <label for="dz">Zręczność</label>
                        <input id="dz" type="number" value="0" min="0" max="5">
                    </div>
                    <div class="grid-element">
                        <label for="resfire">Odp. na ogień</label>
                        <input id="resfire" type="number" value="0" min="0" max="10">
                    </div>
                    <div class="grid-element">
                        <label for="lowcrit">Obniżanie CK</label>
                        <input id="lowcrit" type="number" value="0" min="0" max="2">
                    </div>

                    <div class="grid-element">
                        <label for="sa">Szybkość ataku</label>
                        <input id="sa" type="number" value="0" min="0" max="5">
                    </div>
                    <div class="grid-element">
                        <label for="resfrost">Odp. na zimno</label>
                        <input id="resfrost" type="number" value="0" min="0" max="10">
                    </div>
                    <div class="grid-element">
                        <label for="acdmg">Niszcz. pancerza</label>
                        <input id="acdmg" type="number" value="0" min="0" max="4">
                    </div>

                    <div class="grid-element">
                        <label for="slow">Obniżanie SA</label>
                        <input id="slow" type="number" value="0" min="0" max="2">
                    </div>
                    <div class="grid-element">
                        <label for="reslight">Odp. na błyskawice</label>
                        <input id="reslight" type="number" value="0" min="0" max="10">
                    </div>
                    <div class="grid-element">
                        <label for="acmdmg">Niszcz. odporności</label>
                        <input id="acmdmg" type="number" value="0" min="0" max="4">
                    </div>

                    <div class="grid-element">
                        <label for="energy">Energia</label>
                        <input id="energy" type="number" value="0" min="0" max="5">
                    </div>
                    <div class="grid-element">
                        <label for="act">Odp. na truciznę</label>
                        <input id="act" type="number" value="0" min="0" max="5">
                    </div>
                    <div class="grid-element">
                        <label for="endest">Niszcz. energii</label>
                        <input id="endest" type="number" value="0" min="0" max="2">
                    </div>

                    <div class="grid-element">
                        <label for="mana">Mana</label>
                        <input id="mana" type="number" value="0" min="0" max="5">
                    </div>
                    <div class="grid-element">
                        <label for="abs">Absorpcja</label>
                        <input id="abs" type="number" value="0" min="0" max="5">
                    </div>
                    <div class="grid-element">
                        <label for="manadest">Niszcz. many</label>
                        <input id="manadest" type="number" value="0" min="0" max="2">
                    </div>

                    <div class="grid-element">
                        <label for="evade">Unik</label>
                        <input id="evade" type="number" value="0" min="0" max="5">
                    </div>
                    <div class="grid-element">
                        <label for="absm">Absorpcja mag.</label>
                        <input id="absm" type="number" value="0" min="0" max="5">
                    </div>
                    <div class="grid-element">
                        <label for="lowevade">Obniżanie uniku</label>
                        <input id="lowevade" type="number" value="0" min="0" max="5">
                    </div>

                    <div class="grid-element">
                        <label for="block">Blok</label>
                        <input id="block" type="number" value="0" min="0" max="5">
                    </div>
                    <div class="grid-element">
                        <label for="pierceb">Blok przebicia</label>
                        <input id="pierceb" type="number" value="0" min="0" max="4">
                    </div>
                    <div class="grid-element">
                        <label for="pierce">Przebicie pancerza</label>
                        <input id="pierce" type="number" value="0" min="0" max="4">
                    </div>

                    <div class="grid-element">
                        <label for="contra">Kontra</label>
                        <input id="contra" type="number" value="0" min="0" max="4">
                    </div>
                    <div class="grid-element">
                        <label for="absdest">Niszczenie absorpcji</label>
                        <input id="absdest" type="number" value="0" min="0" max="4">
                    </div>
                </div>
            </div>

        </div>
    </form>

    <#list articles?reverse as article>
        <div>
            <h3>
                <a href="/articles/${article.id}">${article.title}</a>
            </h3>
            <p>
                ${article.body}
            </p>
        </div>
    </#list>
</@layout.header>