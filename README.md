<H1>MoneyBall Project (Capstone Project)</H1>
<h2>Baseball Rules</h2>
If you're completly unfamiliar with Baseball check out this
<a href="https://youtu.be/0bKkGeROiPA">very usefull video</a>
<h3><a href="http://https://youtu.be/Tzin1DgexlE">Background</a></h3>
<i>source:Wikipedia,Jose Portilla</i><br>
<h2>The 2002 Oakland A's</h2>
<p> The Oakland Athletics' 2002 season was the team's 35th in Oakland, California. It was also the 102nd season in
franchise history. The Athletics finished first in the American League West with a record of 103-59.

The Athletics' 2002 campaign ranks among the most famous in franchise history. Following the 2001 season,Oakland
saw the departure of three key players (the lost boys). Billy Beane, the team's general manager, responded with a
series of under-the-radar free agent signings. The new-look Athletics, despite a comparative lack of star power,
surprised the baseball world by besting the 2001 team's regular season record. The team is most famous, however, for
winning 20 consecutive games between August 13 and September 4, 2002.[1] The Athletics' season was the subject of
Michael Lewis' 2003 book Moneyball: The Art of Winning an Unfair Game (as Lewis was given the opportunity to follow
the team around throughout that season)<br>
This project is based off the book written by Michael Lewis (later turned into a movie).</p>
<h2>Moneyball Book</h2>
The central premise of book Moneyball is that the collective wisdom of baseball insiders (including players,
managers, coaches, scouts, and the front office) over the past century is subjective and often flawed. Statistics
such as stolen bases, runs batted in, and batting average, typically used to gauge players, are relics of a
19th-century view of the game and the statistics available at that time. The book argues that the Oakland A's' front
office took advantage of more analytical gauges of player performance to field a team that could better compete
against richer competitors in Major League Baseball (MLB).

Rigorous statistical analysis had demonstrated that on-base percentage and slugging percentage are better indicators
of offensive success, and the A's became convinced that these qualities were cheaper to obtain on the open market
than more historically valued qualities such as speed and contact. These observations often flew in the face of
conventional baseball wisdom and the beliefs of many baseball scouts and executives.

By re-evaluating the strategies that produce wins on the field, the 2002 Athletics, with approximately US 44 million
dollars in salary, were competitive with larger market teams such as the New York Yankees, who spent over US$125
million in payroll that same season.

![salary](https://github.com/OmkarNinav/MoneyBall/assets/127706918/f2b96b8b-aabf-4998-979e-ac9e42547501.png)


Because of the team's smaller revenues, Oakland is forced to find players undervalued by the market, and their
system for finding value in undervalued players has proven itself thus far. This approach brought the A's to the
playoffs in 2002 and 2003.

In this project we'll work with some data and with the goal of trying to find replacement players for the ones lost
at the start of the off-season - During the 2001–02 offseason, the team lost three key free agents to larger market
teams: 2000 AL MVP Jason Giambi to the New York Yankees, outfielder Johnny Damon to the Boston Red Sox, and closer
Jason Isringhausen to the St. Louis Cardinals.

The main goal of this project is for you to feel comfortable working with R on real data to try and derive
actionable insights!
    
## Data
We'll be using data from <a href="http://seanlahman.com/download-baseball-database/"> Sean Lahaman's Website</a> a very
useful source for baseball statistics.

## Feature Engineering
We need to add three more statistics that were used in Moneyball! These are:
<ul>
<li>Batting Average
    
![Batting Average](https://github.com/OmkarNinav/MoneyBall/assets/127706918/a6ee4cef-4035-498a-b402-66b6769400db)

  
![Batting Average](https://github.com/OmkarNinav/MoneyBall/assets/127706918/a7ef62f4-12d8-44a6-a77e-0853443b53d7.png)

</li>
<li>On Base Percentage

![On Base Percentage](https://github.com/OmkarNinav/MoneyBall/assets/127706918/2633faae-f8f8-493f-aaea-92f8b8687d0a.png)
</li>
<li>Slugging Percentage
  
![Slugging Percentage](https://github.com/OmkarNinav/MoneyBall/assets/127706918/18964658-1919-48e9-9dcf-e3b3909ffd0f.png)
</li>
</ul>

## Replacement Players
Now we have all the information we need! Here is our final task - Find Replacement Players for the key three players we lost! However, you have three constraints:

- The total combined salary of the three players can not exceed 15 million dollars.
- Their combined number of At Bats (AB) needs to be equal to or greater than the lost players.
- Their mean OBP had to equal to or greater than the mean OBP of the lost players

## OBP vs Salary Graph

![Plot](https://github.com/OmkarNinav/MoneyBall/assets/127706918/2fb1c179-d274-4cfa-a920-27e91279c66e.png)

