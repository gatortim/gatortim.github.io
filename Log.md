
## 12/12/2022

Start

onboarding

## Edward 1:1 onboarding document 

Edwards hours = PST, 930 

Alerts / alarms 

Culture onboarding 

agile, but not Agile

invites to ceremonies

ad-engaged converance 

org invite? 

lighthouse?  

simple mdm

chef?  

db credentials
vscode 

I9

Healthcare signup

DB credentials

ava captures metrics on effectiveness

exposes views taffee - FE

3 macro services
under atlas umbrella 
video -> feed logs

collection - lighthouse is separate 


lattice :) - need credentials

one ticket for credentials

aws credentials

domain squatter took edo

ViX - premier spanish language streaming service 

continued machine setup

## 12/13/2022

## Questions

branch naming conventions

oh-my-zsh

make, test? 

documents to read?  

Coding tutorials? 

no meeting wednesday?  I seem to have quite a few meetings

alerts, pagerduty, alarms
sentry projects / teams?  

asana boards / jira projects I should look at? 

project for me?  

snowflake function?  

It sure feels like google CEL should be able to handle this...

already capturing ip of the beacons

dont store, only hash

Matt L, Tim C - aws component with ALB WAF

## 12/15/2022


mmdb spec review

NOTE: ask Edward about ipv6

talk to Peter, include Edward in slack channel 

identity spine
raw IP address
device id (mac address, etc.)
random and persistent cookie
unify identifiers
- ip not persistent
(intedifier type, identifier, timestamp) -> household id

should be 1:1 with "long lived" identity

there are certain households that we look at more 
- inscape data - large panel of occurance data
if data points not within that set - we throw out
- design decision

check size of databases
do we need to look at higher granularity? 

we will save the subnet

other things we should be discussing
- ava situation

small creative differences reporting? 


1:1 colin notes
- where is remote for Colin? 

EJ or Edward, encryption strategy document? 


snowflake user defined functions for IP to country? 

m4? 

huntsville adjacent AL 

defense background 

Mark

- list of what nomenclature separate

Peter is in charge of data science team

Suresh, program manager
Jordan, product manager

contractual security requirements from MVP level at 
- lighthouse 

## 12/16/2022

1:1 Suresh

Jersey

lots of time with Ava and DS

~ 1/2 time of ava is fighting fires

ava team resource bau type availability

siloing of teams

more knowledge sharing

lots of noise in jira, cleaned up and clear priorities
bugs get captured with helpdesk ticketing
better procedures in place 

more of scrum master type role

security project
- cross functional stuff

country code PR up

town hall

add photos to cute animals channel :) 

comp review jan / july

Matt mentioned SDLC / CICD stuff. 
Whats up with that on the security stuff? 

etl manager? 

is opt out at the join to "known households" from inscape?
aka visio smart tv dataset
how does the "time series" of identifiers play into this? 

list of device IDs, ip history

pre-pre
subset we want to ingest immediately
smaller scope

## 12/19/2022

rails / ruby quickstart, continued looking at filtering for non-US

## 12/20/2022

continued with rails / ruby learning
Mostly rspec stuff, looked at EJ's PR

python pairing

## 12/21/2022

1:1 with Edward notes

repairing python install

completely f'd up my python installation

redis database count?  Is 26 enough? 

logic to identify end user's actual IP
** so as that logic needs to move up
want/need eventual delete
for now, just include the country in the output

would be great to have something logged
- 

Backfill job for old data -> new format? 

OOO to calendar, and announce in after dark

known plaintext is not a threat here
- we are getting IP address from the headers

Talk to Matt about the Key, IV
- CBC probably has less "reuse of IV" exposure? 
- probably doesn't matter for our use case
- CRT still an option
- The auth tag situation for GCM seems like a blocker

if we just use a hash for the IV
- this will work slightly differently for "IP" vs. "not IP" headers
- 

## 12/22/2022

Feature to staging

run test, look at sentry lighthouse staging

sentry, console, check from Russell to see that things are still getting batched

1:1 Notes

key rotation, read, re-write operation? 

the encryption stuff, is that the right level of engagement? 
not stepping on toes

Travel stuff? 

Anything I need to set up for grooming/planning while out? 
Nope

seems like a pretty "down" week
Any expectations I need to be focusing on with greater effort?

Are there parts of ava / atlas that I should also start getting familiar with?
ava - bigger gulf to cross, getting good ROI is harder
atlas - yes, 

Next: 
ATLAS board vs learning for tomorrow? 
bulk updates? 
yes, except pre-pre-mvp wrapup
next week timeline

Inon, on leave left a few things open
- might not make sense, Edward might just wrap it up
puppeteer
AVOD collection, time platform demo exposures -> avod db
doesn't really have an owner
netflix & disney plus - ad tiers
currently would fall to Edward
- other work is higher priority 

no hard timeline
could align

atlas apps/core - each subsystem
non_linear (Ruby side of it) 
lib/puppetry (Node JS browser automation side)

ruby
priority, background jobs
- invokes node job

Goals to work toward
- things to play around with
Invoking puppetry airings collection from Ruby
 
interactively setting up then running airings collection 
directly in node. 

## 12/23/2022

eng meeting

- Move logic to determine "end user actual ip"
- migrate / backfill
- subnet / "what other data will be useful"?
- get key from secrets manager

(is there a bucket key for version info?)

should the pixel information path include version?


copy program data set from staging into sandbox1
- should get it to work

design things in a way that environment information is not
encoded in the data value level

to make own program-data-set

go to nl_proxies, group main1

programmed data sets are namespaced

- it is a private method

never constantize from with production

## 1/3/2023

not feeling well in the AM

Caught up on stuff

started working on ad supported disney plus collector (puppeteer) 

## 1/4/2023

started work on disney + 

1:1 note, help with lighthouse
lighthouse stuff
- secrets manager troubles
- maxmind error conditions -
- backfill
- s3
- 

follow up in aec channel on validations. 
new rows that will be missing,
- enumerate
- verify with ava and dsci
- 
test bucket for upstream. 
common data models for the ava extraction?  
Is there an established pattern for sharing data models? 
- graphql auto-gen? 

OKR review

AEC, security and privacy for first party
- support first party
- scale
- add ad-supported tiers

Peter Foley head of data science
Dylan

## 1/5/2023

continued disney plus stuff

some continued thoughts on new data stream

how to assert each event goes to both
"archival"
and
"new"
dependent on implementation of the batch uploader

background job processor for "new" 
- are fields within the "sparse set required by ava"? 
- monitoring on this job? 
- what are the derived/transformed fields?  
- no non-US data - maybe just a monitor

stage 2 monitor / alert for any errors

We know they end up sparse (in scylla?) 
- do we need to include the "pixels" data type
- or is it sufficient to persist pixel types sparsely as well
- 

## 1/6/2023

disney plus stuff continued

## 1/9/2023

disney plus continued


## 1/10/2023

disney plus continued

## 1/11/2023

disney plus continued

grab url to get query parameters

## 1/12/2023

1:1 Mark notes: 

what is the focus of the disney plus collector? 
complete set of comercial creatives? 
acr - pixel data + join to non-linear? 
what sort of account type variation do we need? 

AEC big picture notes: 
real time behavioral information - search in particular
syndicated collection - inscape
disco - and adding m4 panel data
not just inscape, need to join by doing the video comparison
high level questions for Mark

Disney plus breakdown in stories. 

continued disney plus, collecting episode data

lighthouse MVP scoping 

storage probably isn't a huge consideration 

put stuff directly into snowflake

deletion will be much easier in snowflake

concern about the level of effort for "new application"
vs. data management within lighthouse

deidentification opposed to deletion in AVA? 
- would setting the row's column for PII to null 
column is encrypted IP
key rotation enables "de-identification" 

## 1/13/2023

continued disney plus

## 1/17/2023

Thoughts for lighthouse meeting
- Testing in pre-production environment with the snowflake queries? 
- received at - is this what requires the rerun of the migration? 
- batching workers update, verify no crossed wires in pre-prod environment? 

- looks like the new path **should** cover the batching concern to me
- migration re-run - how long? 

alternatives - what is the data Ava is joining on? 
Would a UDF with "less auth" or "no auth" within snowflake be useful anyway? 


Thoughts for post-mortem
- staging telemetry? 
- automated test suite? 
- migration is time-expensive, and didn't provide telemetry
- improve logging to reduce migration risk? 
- "just one off" vs. "will this be a more continuous operation"? 
- pager duty severity? 

## 1/18/2023

1:1 notes - 

Lighthouse engagement - 
- 

Blue green strategy for pixel ingest? 

## 1/20/2023

disney plus continued

## 1/23/2023

disney plus continued

## 1/24/2023

disney plus

series still flaky

parallel needs testing

airings collection - headful and parallel

headful

original genres are in nl_shows

the "edo" ones are in the "genres shows" mapping

program data sets refresh weekly 
should be under 30 minutes with parallelization. 

## 1/25/2023

notes for 1:1

- expenses, all this month my january 31st? 
- Neal, Mark B departures
- Engineering vision change? or just $? 

- series B in may-april, agressive growth plan
- headcount and datasets
- projected growth #'s 
- q4 was bad
- q3 was not so good either
- doubled headcount in a very short period of time
- leadership team re-evaluated
- cash concious

- jan comp review. 

- seeing plenty of runway and focus

Set up with instructions / parameters for e2e test. 
- Edward to write that down
- potential airing in production - would be good to capture those. 

## 1/27/2023

satisfactorily end-to-end test 
put artifacts in the JIRA ticket

rollout to production

ava handoff
- plan for data being launched to clients
- Sebastian normalization and data sanity checks
- Product knows and has what they need to launch


IN THE NEXT: 
atlas infra sync - talk about
blue green
github actions
jenkins deployment pipelines

session rate limiting
- # of requests
- time window
- X per time unit
- problem localized to program dataset collection
maybe dial back series and genres
increasing size of view port may not cause more requests
maybe dial that back? 

avoid wasting requests
use back function to get series URL 
- might avoid requests

maybe throttle on our side

Mark 1:1 notes

## 1/29-2/3/2023

In office

pair on some lighthouse stuff


Notes on Samsung: 
Make a set of accounts for "organic" collection
Sub-class the collectors to not fast forward
flag in constructor for "dont fast forward"
Add output to session for "was a good collection" ? peacock has of trouble 
- this seems like a meaningful metric to capture anyway
Do we actually need to make new accounts? 
- would be easier to keep separated if we do
- new account type? new column "is organic" or something? 
Improvements to session timing output
- start of viewing
- end of viewing
- organic or not
- was it "normal" / "valid"
Is there anything else needed for average time to first ad? 

What sort of sample size is needed for "organic" collection to provide the required data for 6a? 

for c and d, is this simply capturing content duration in addition to the ad durations?  or is it organic collection + "real program start" in addition to the "session start" 

simple collection of episodes should be sufficient, 
we probably do not need to have "extended viewing sessions"
Sebastian can stitch together needed results from "episode" level viewing. 
Check this assumption

what is the sample size?  ~ 100 per cut
- what are the cuts?  
14 accounts, 4 sessions 30 minutes per day

- check if playback starts at "not the start" 
- monitor playback position
- compare to wall clock time
- no skew and no discontinuity
- 



## 2/3/2023

- Need to do expenses for SF trip

disney plus may not be happy with using the same card for multiple account



## 2/6/2023

disney plus

accounts
service
program data
raw show data

proxies for disney + 

debugging disney + errors in collection

## 2/8/2023

out sick

## 2/9/2023

disney plus continued


TODO: document disney + thresholds

triple sleeps

p-samsung scoping 


test headless data set collection again
- 

2 accounts to Edward

only one successful, credit card is mad :( 

proxies done

5s - still 403 after 30minutes
made it to limitless with chris hemsworth 
15s - 403s after 58 minutes
made it to hamster & gretel 

1:1 notes
- disney plus progress
- sick day
- hulu "large gaps" alarm
  - is this due to the logouts? 

series
- get metadata
- get episodes

## 2/10/2023

disney+ program data set collection redux

## 2/13/2023

disney plus series collection continued

## 2/14/2023

disney plus

got disney+ going in sandbox1

## 2/15/2023

UNENC
int
r seperator in programming segment

headers?

playlist segments? 
programming playlists have encryption and additional directives
discontinuity markers for commercial breaks
total duration >> too large for an add

## 2/16/2023

disney plus continued

@@ 2/17/2023

proxies diversity might be a thing

check sqs queues

increase collection requirements

re-run program data set collection 

NEED TO FIX michael_2001!
localStorage is working, but refreshing it still hits the one time pass code

## 2/21/2023

proxy reassignment 
- other accounts 
- looks at subnets of proxies
- chooses "known good" 
- load balances the assignment of the accounts 
- makes the assignments

TODO: same process for bad proxy testing for discovery + 

#2/22/2023

discovery + recovery for bad proxies

tubi recovery

pluto recovery

hulu, is it because there are a lot of devices? 

log out of all other devices? 

Change password prompt? 

Do we just need to wait longer for the captcha? 

check puppeteer-stealth plugin

simple wait before login did not get it done :( 
3s fail

## 2/23/2023

HBO max metadata 

PR review comments

1:1 notes

## 2/24/2023

Disney plus collection refactor

potential airings 

407 before release without discontinuity check

449 after release + 

494 at 418PM 

498 at 445 prior to release

## 2/27/2023

potential airings at 1121

1122 at 958 after re-release without playlist tests in isPotential

max 90581 was logged at 958.  potential airing created at 1005

HULU investigation notes:
login - no prompt.  Added sleep seemed to give enough time for the re-captcha to show up. 

Daniel recovery notes
prompted for one time code
has 1 device
session expires in 2 days

logout 

logging back in

reset password to same password

1 month session 

reset email request sent

new proxy, prompted for code again

1 month session

back to previous proxy

session data is back to OK

hulu recovered for daniel

charles

3 days after entering code

1 device

michael 2001 is sad :( 

## 2/28/2023

collector repair

charles 818

805

## 3/1/2023

1:1 notes

airing / potential airing identification
- only after the last set of conversations that we got to a shared understanding 

keep feedback loop tighter

## 3/2/2023

checking on potential airings in prod for disney

disney plus check on frequency of ad serve

Looks like they just get limited

## 3/3/2023

Disney+ looking good

started looking at lighthouse changes


## 3/6/2023

anthony_2006

jessica_2010

patricia_2007

daniel_2005

joseph_2003

karen_2011

barbara_2009

linda_2008

betty_2013

margaret_2012

proxy searches

lighthouse look

disney+ genre mapping 

## 3/7/2023

sick in the AM

kantar vivvix

ask, onboard "one additional" collector

Or maybe more, perhaps with much more targetted profile work

freevee
crackle
amc+
fubo

and Netflix?  Whats the status there? 

and samsung

It feels like the priorities are still unclear
- what is the work wieghting methodology?  


## 3/7/2023

TODO: documentation around lighthouse-AVA mvp interface changes

Book time or @more often for feedback

## 3/8/2023

lighthouse stuff

## 3/9/2023

michael_2001
60501

** should be recovered moved to 50201

Inan 1:1 question what is MRS?

what is next?

started to look at snowsight 

PR reviews

# TODO:

What do I want to do for the next 6 months?
What do I want to contribute - what will have high leverage impact?

## 3/10/2023

lighthouse PR reviews

joseph_2017

TODO: 
value stream map

## 3/13/2023

little look at snowsight 

value stream map

## 3/14/2023

PR for Russell

investigation into proxy change for Hulu recovery

## 3/15/2023

1:1 notes

hulu OTP 
multi-account was not set up in time
would need access to the right account

not pipedream

design doc for OTP plan
something that covers finer points / decisions

value stream next steps - add to atlas confluence

verify mysql is not available when off vpn

## 3/16/2023

imap search 

## 3/17/2023
eye doc
dilated - cannot see :( 


## 3/20/2023

disney plus email

## 3/21/2023


continued email otp capture work 

## 3/22/2023

getting lasik

1:1 notes

- OKRs
Talk to Jordan
Tread carefully, but let him lead

- lighthouse pixel modeling 
Possible for no-sql 

## 3/23/2023

disney + debugging continued

## 2/24/2023

## 2/27/2023

pixel information thoughts

Would redis work?  What can be leveraged to reduce the overhead of typing which still sharing models?

deletion request calvin - ava is going to put csv's in buckets

@@ 2/28/2023

pixel info 

OKR meeting notes: 

## 3/29/2023

disney+ OTP work
anthony_2020 and linda_2008 

linda_2008
OTP recovered account
no PW gate

otp recovered collection as well.  

AVOD handoff to EJ
- 

## 3/31/2023

disney+ account debachle 

ava-aec review

Josh 1:1 notes

- vision

started on spike based v1 pipeline 

fundimental challenge of data engineering
- mostly data quality
- operational implications of maintenance

airbnb payments team
financial
compliance reporting

definition of data quality - balance with business needs
panel data 
expected error rates

10k view of vision 
- zoomed out what does product need? 
make marketing as effecient as possible
make marketers lives easier

how to get to "adwords" for TV? 
measurement on streaming 
vs. traditional linear

core value prop - measure against predictive outcomes / behavioral outcomes
how do we want our data to be used? 
measurement
real time optimization
planning - what tools are you using? 
currency - 

differentiator - our tech chops - best in class data science / pipeline

highlight in retro - 

## 4/3/2023

continued trying to get ava-aec 

got ava-aec sort of working

## 4/4/2023

disney plus account recovery




Questions on AEC stuff for Dylan
- LIVE invalid identifier on inscape content
crosswalk_hh - where does this identifier come from? 

IPV6 




## 4/5/2023

ava-aec continued

1:1 notes with Edward - 

ava issue this AM retro? 
Ryan C landed some large changes to bdbo 
traction 
tested in pre-prod be environment 
will schedule a post-mortem
one of the jobs was failing - did not notice after merge


model groups 
collection of brands and products 
- train model on occurance and outcome data
- apply trained model, extract some parameters
- 1:1 within alexandria categories
- sell side clients make things extra complicated


email OTP work

more delibrate job of brining into ava-aec 

pixel lost debugging with Russell

## 4/6/2023

TODO: 
creds for dev snowflake db

aaron W - setup role access in AWS for 
sprod and dev 

snowflake create external stage

load into DATA - single column with json blob

source / prep / core models in dbt

Matt and Gary for infra questions on the 

OWASP stuff

## 4/7/2023

OWASP no

## 4/10/2023

ipv6 stuff

disney+ otp across the line

## 4/11/2023

disney + recovery

ipv6 discovery 

## 4/12/2023


1:1 notes with Edward

spike for NAT translated addresses for IPV6 -> IPV4 join 
in order to get to the identity spine? 

## 4/13/2023

Pair with Inan as next priority

ipv6 across the line

## 4/14/2023



## 4/17/2023

ask Dylan how we might want to handle delete after 3 months for Disney
Pair with Inan on this when I start

## 4/18/2023

ipv6

AVA-1912
- pixel data is not "ready for processing"
- not in the ideal form for scalable reporting
- ids, not advertiser ids
- build from id - to something meaningful
- spreadsheet for the mapping
- even after mapping, still not in a good place
- mapping spreadsheet not comprehensive
- creative id, advertiser id would be standardized
- alexandria brand id for the join, not just the advertiser name
Goal
- come up with and implement system that addresses this shortcoming



NOTES ON OKR SYNC

## 4/19/2023

1:1 notes with Edward

- Inan Pairing
- 1st party metadata
Just mapping without standardization may be sufficient
DS / report generation can muddle through - just not optimal
- How am I doing?  Things I need to keep on my radar

## 4/20/2023

pixel info stuff

ipv6 cleanup started using dbt

1:1 with Inan

## 4/21/2023

pair with Dylan on ava-aec


TODO: abstract base class in ruby? 

1st party pixel data

ad outcome 
ad 

ad ops team at agency
- create a creative
- make sure they run in the right spot
- ad servers
- placement
- custom taxonomy for things they care about it
- media associates have a convention
- mostly matching 

How do we get these files? 

sometimes clients email a spreadsheet

sometimes we can pull the report ourselves

api to dcm 

any ad server 
sprintserve, xandr

variables we want to associate 

ai - get actual sources - 
- Ryan

## 4/24/2023

ipv6 fix merged
no idea how to run not-incremental in produciton

draft PR up for pixel info

## 4/25/2023

ipv6 completed

rebase pixel info stuff


## 4/26/2023

1:1 notes

interview SQL question 

pixel metadata unified

pixel info 

## 4/27/2023

had to move mattress and bed frame 

pixel info

## 4/28/2023


lighthouse pixel info refactor continued...


AVA-1946 add linting
- Matt

## 5/1/2023

Notes on sql data engineer interview questions - 

question 1: 

quick intro

quick intro for candidate

interview process

5 minutes at end

whatever approach is OK

first 3 pass

question 2

3 ways
case when 

nvl or coalesce. 

split_part

LEFT join!  

q3 dedup 
hardest question 

rank / dense_rank

row_number or least

lighthouse work across the line

## 5/2/2023

interview

continued pixel metadata stuff

## 5/3 - 5/7 
Too sick to work

## 5/8/2023

started on linting stuff

1p pixel discussion with Edward

sample query for disney expedia pixel 
- creative has a specific alex_id
- other creatives have other alex_ids

allow any raw parameter to map to any unified parameter
mapping many parameters to one edo unified as well

multiple pieces of metadata we want to break out
placement parameter values separated by | 
how to handle that
we could denormalize that as well
that could help with mapping 

## 5/9/2023

linting continued

## 5/10/2023

linting up for initial review

object model for pixel metadata

## 5/11/2023

linting feedback from Dylan

continued object model for pixel metadata

## 5/12/2023

pixel metadata meeting

linting continued, draft pr off good branch up

peter and cal 
- draft schema 
- share schema with them
- 


## 5/15/2023

linting rebase on main

delete query started

continued 1p metadata refinement

rules for query to get unified values from event

different pixels may have different fields and rules

concrete examples

from pixel event to standardized metadata
- core use case
- from metadata from materializing

## 5/16/2023

pixel metadata examples

linting too

cal psychics

harsha / DSci - if / where they are getting cal psychics metadata

are there pixels/cases where things are not top level? 
who might know the answer to that? 

ask jordan and harsha getting mapping metadata for additional pixels

add enumeration of edo_unified values

## 5/27/2023

pixel metadata investigation continued

1:1 topics

data retention 

## 5/18/2023

role of audit? 

1:1 notes - 

data retention / deletion requirements

Feedback

TAM channel request for client metadata

## 5/19/2023

hypernormalized form for pixel metadata 

CTV unified review 

data retention / deletion contract reviews

## 5/22/2023

pixel metadata 
and meetings to discuss

deletion meeting

## 5/23/2023

later join on names to handle caching 

rerun - 

efficacy model does need some metadata
- like publisher

exposure cache 

dedup concerns 

## 5/24/2023

continued pixel metadata work

UoPX creatives including target segments thinking

1:1 notes

pixel metadata: 
- architecture spec? 
- start breaking up work items under an epic? 
- Other steakholders? 
- interface for modeling may cause deduplication performance concerns
- it **may** be possible to mitigate this with dedup earlier in the data flow
- s2s, inscape, linear work? 
- value stream / data stream maps

do experiment 

deletion requirements
- chaching tables 
- clarity on what is in the parquet files

sync with Josh on deletion from disney? 

overall status

resumes

pto on Friday

Items from Edward: 
- think about timeline for 1p metadata
- milestones associated with 1p metadata 


Release notes for linting broadcast: 
install pre-commit
create mwaa virtualenv with dev/requirements.txt
fix mypy failures as files are touched

sqlfluff to follow 


deletion request information 

Matt interview

## 5/25/2023

Suresh touch base

AVA process, notes for backlog grooming 
- ensure tickets are ready

## 5/30/2023

pixel metadata continued...


## 5/31/2023

pixel metadata 

1:1 notes - 

hiring progress
progress

feedback checkin

positive - 
care in a lot of ways and want to have impact


growing pains - 
growth opportunities - 
big impact - big projects - taking over complicated hairy open ended things
- producing good solutions
- senior engineer stuff
- course correct on avod
- lighthouse was close to completion 

something that might move the progress bar on trying new things

ava-aec pixel metadata


regular feedback 
- Edward & Edward's performance

## 6/1/2023

pixel metadata stuff continued

## 6/2/2023

pixel metadata stuff continued more

## 6/5/2023

pixel metadata feedback 

concern - what does it actually look like - cost of manual excersize 

question - add webapp for admin tools
- level of interest / expertice with taking on 

## 6/6/2023

Edward feedback
- Supportive and adaptive in response to finding work for Tim that Tim likes.
- Flexibility with direct report needs
- Very helpful in pairing / technical leadership
- Interpersonal / team building 


challenges
- blocked on bandwidth from ** insert SME ** 
- challenges translating from PM/TAM to requirements
- how to help free up bandwidth for folks who end up blocking work? 
- inbox 0 (not just Edward)
- atlas seems a little disjointed - grooming / retros 
- cross team transparency seems to mostly be limited by "silo"ing
- guilds?  working groups?
- definition of ready / definition of done consistency
- working agreements?  
- planning break?  
- async planning? 

data governance working group already started. 



Brian 1:1 notes on metadata
candidate sync 

## 6/7/2023

pixel metadata

parsing of placement metadata is a sticking point
where / who does that work still unresolved

1:1 notes

terminology note: omni-unioning from all pixels



 reply to Ryan slack thread in cmp-technical

## 6/8/2023

value stream map for pixel metadata

snowflake backfill notes

fubo sync notes? 

need to move cmp_pilot_1.yz_scratch.fubo_linkage from legacy into this Fubo DSC

how to filter for just fanduel? 

## 6/9/2023

fubo pixel 

questions - pixel information as replacement for s2s - when/if does pixel replace s2s?
data type changes in ava production - was it already used for last report? 
do any refined data types cause unwanted variation in the delivered report? 
are there any discrepancies between legacy and aec production which need explanation? 

check legacy vs. production column names and types

move to one dsc and remove all the types not just in lighthouse events

BDBO_DEV.USR.V_FUBO_SPRINGSERVE

AVA_AEC_PROD_USR_R.DSC_SYNDICATED.
FUBOTV_SPRINGSERVE

xw20

## 6/12/2023

pixel metadata stuff continued

fubotv continued

## 6/13/2023

contract talk
- CCPA is updating
-- 
- data ownership is unclear publisher vs. advertiser
-- 


1p pixel metadata next steps

More clients in metadata
- refine that process. 

Excersizing downstream of seed and table reports for DSci


Core set of columns - 
campaign name
creative
publisher
placement
target group
Should the always exist even if null? 

desire for fixed set of columns

metadata as sparse 

- enumeration of all desired columns
- object get in snowflake

core set of fields
+ object 

ideal interface for DSci - 
based on AVA processing
human readable string value for "campaign" for reports


Why doesn't it just work
thing we are trying to map does not map cleanly into the set of canonical columns
other column

cache tables.  

## 6/14/2023

grouping by non-existent metadata for all pixels
VS
group by parameters that exist in events
merge with metadata after for reporting

the transformation of raw value to the effective value across data set
- it can the training of the model
- can't be just touched up after the fact with cosmetic renaming

example
- two raw values mapped to the same effective value
- i.e. site_id 123 == "Hulu" site_id 132 = "HULU" 

who is responsible for determining the logic? 
- for effective "core" values? 
who is in a good position to accomodate cadence of code change required? 

identify some set of "core" effective parameters



## Meeting notes

digression into dedup expense and caching 
inscape also has guids on events 





TODO: 
meta test queries for data existence


## 6/16/2023

pixel meta example again


TODO: 
pixel metadata for disney experiment 
- document metadata update process 

## 6/20/2023

pixel metadata continued

## 6/21/2023

1:1 notes
- metadata progress
- deletion next steps

old navy example metadata

create all the views

## 6/22/2023

pixel meta continued 




Bayer - no pixel data so... 

Notes on deletion 

disney - 
some updates
wait for requirement clarification then build

if requirement does not provide insight into "long term" plan 
- need to reset

delete / de-identify data from disney upon 3 months of receipt
stop gap solution 
may also be long term 
no long term solution to anonomize as currently understood

every disney fact must be deleted or sanitized within 3 months of receipt. 

deletion- delete all rows (1p or s2s) everywhere
sanitizied - data that is impossible to link to any individual or HH
nulling edo_ip_id is insufficient because crosswalk HH still exists

would like to archive a copy of data deleted without disallowed fields (any row level identifiers)

row level without any identifiable 
OR 
aggregate (longer term maybe something) 

delete all data received from hulu - including non-disney pixels
(example: UoPX) 

dbt / airflow to automate execution daily? 

## 6/23/2023

pixel meta pair with Dylan

blade - updated

cal psychics

old navy
- asking 

walmart
- trying 

dominos

UoPX


## 6/26/2023

pixel meta PR in review

started delete work

project check in  

Metadata ingestion walkthrough suggestions?  

What is next? 

scalable model groups
- report generation 
- report type
- time range
** entities 
- alexandria entity that is subject
- model group that is used for training the model
- competitive entities 

dbt cleanup

## 6/27/2023

cal psychics metadata 

disney deletion work

## 6/28/2023

1:1 notes - 

s2s integrations - the thing that is valuable is ava owning the task of providing the abstracted view

UoPX metadata cleanup

old navy 

dominoes - verify disney view with dominoes

Do we need to audit UoPX hulu detection logic? 

Brief but documented timeline / gameplan for satisfying Disney+ requirements
** add to confluence page 
@ DSci and Infra

## 6/29/2023

amazon xcm disney pixel

snowflake secure data share

A+E meeting with edward

blade check ids
x

A+E meeting notes: 

cross region replication is just infra stuff

insert 

site section "companion file" may be updated

normalized or denormalized? 

87ish but using 25 companion "dimensions" to the events "facts" 

if denormalized then updates are needed

probably denormalized unless something isn't available on the fact

Schema notes: 
dimensions - start with a lot and if we need to scale back OK
facts - impressions only? 
- other event types?  maybe after go-live if we saw the need

site section is a compound field - but they are using it consistently

normalized
- append only fact table
- update on dimension tables 

## 6/30/2023


TODO:
Documentation on AC for new s2s integration 

infra handoff for A+E 

Disney deletion PR 

Aaron PRs

updated blade publishers
march 6 23 start date

Old navy metadata Update in pixelmetaredux

How to handle both lighthouse__pixel_events and prep_lighthouse_events

Disney deletion stuff


## 7/3/2023

disney data retention up for review

amazon xcm 


2526826387


## 7/5/2023


TODO:
Document A+E S2S integration workflow

Blade metadata

UoPX metadata

xcm metadata

1:1 notes

A+E priority vs. metadata scrambles ? 

concerns about pixel metadata redux merging? 

no / not really 

retro on disney data retention 
- State of Edward's brain on Monday
not confident that we were on track
1) lack of infra status
2) coordinate with DSci part of closing up

holistic ownership? 

What can we learn? 

transparency on status

What does it look like to update metadata?  

update json file
run unit test
copy seed files into seed directory

infra will need to add access for DSci into the new views

move .sql files into existing dsci folders for to keep same roles without having to get infra to update all the schema permissions.  

Update metadata workflow in pairing session 

## 7/6/2023

UoPX meta

UoPX in data deletion / archive process

A+E stuff

##7/7/2023


blade metadata testing 

campaign
advertiser
publishers
creatives



## 7/10/2023

Disney and UoPX custom cuts

pixel meta across the line

Disney pixels

UoPX custom cuts for target segments

Krow_Dating_WithSubs
MaleVO
FemaleVO
Krow_Dating_WithSubs
MaleVO
ManOnTheStreet
Krow_Career_WithSubs
ManOnTheStreet
Krow_LifePath_NoSubs
Krow_Dating_NoSubs
Krow_LifePath_WithSubs
FemaleVO
Krow_Brand

cal psychics

## 7/11/2023

performance change in run all

Does infra know the exact ask for A+E? 

Edward knows this is different than NBCU
- Edward does not know what info the infra team has
- Edward is not confident unless the exact ask is detailed

sample with real data available in our region



## A+E check

campaign
placement x
creative x 
publisher
target group - placement audience targeting? 


ad unit type? 
platform? / network id? 

## 7/12/2023

S2S value stream for infra

disney views across the line

Not doing: 
Do Not Track

Not doing: 
AVA backlog status

## 7/13/2023

follow up UoPX target metadata

GMC metadata stuff

A+E reset 


## 7/14/2023

pipeline for ava-aec meeting

sqlfluff stuff 


** 
A+E meeting notes: 

campaign not included in the log file

share campaign data

share log files with companion files

Looking a placement ids - common to campaign 

advertiser -> demand partner 
- under the hood mutliple advertisers with mutliple campaigns 
- sometimes additional data is available, not always

probably going to need to do the advertiser mapping ourselves

CCPA delete request 

## 7/17/2023

A+E follow up with Infra 

GMC across the line

MFour and clustering added to my backlog



clustering thoughts: 
keep an eye toward cost
cluster everything by date? 

Look at clustering performance cost / benefits

notes from project checkin

find biggest tables
- define access patterns
- clusterting details / gotchas may exist
- too granular - partitions too small

resource for defining access patterns: 
- Ed, Dylan, Peter, Cal, Ryan

Matt 1:1 

## 7/18/2023

clustering work started 

Josh re: meta

## 7/19/2023

clustering 

Setup meeting for unified taxonomy 

A+E data elements

Log file
campaign audit report
placement companion file(s)

cluster by: 
cost - as long as its not random wrt access patterns
performance - snowflake query planner
- is the query planner taking advantage of cluster by? 

Follow up on performance in a thread in slack

## 7/20/2023

A+E fire drill on email back

Dylan PR review

AVA-2033 cluster by work

TAFEE CTV unified taxonomy notes: 

occurance data - probably mostly informs the information architecture

occurrances - side by side linear and AEC
linear maps to multiple entities 

attributes from occurance - multiple data sources
atlas
inscape
client 1P 

Should we have an "airing" on the CTV side? 
- yes - this is complicated 
- may not be stable and may need to evolve over time

delta between linear airings and exposure records

plan for formalizing 
- creating schema 
- information architecture 

implementation recommendation
- formalize taxonomy fully normalized 
- separate plan 
- processing and optimizing of process efficiency 

implications for front end and support of views 
group labels should be reliable 
attributes are available 

media - how to pivot from CTV airings? 
exposures have tms id and such 

1:1 notes - 
backlog for ava / OKRs for the quarter? 
infra process update 

Edward items 
- lack of dbt access 
dbt service account - jenkins - any gaps?  
infra might have bandwidth for this

clustering 
are queries as performant as they can be? 
what queries are painful? 
query planner optimization? 



*** 
will adding cluster by actually just alter or will it replace? 

look at snowflake linear function 

Double check that prod tables are not already clustered by 

## 7/21/2023

continued cluster by work 

A+E meeting

Amazon S2S integration 

A+E meeting notes: 

log table, placement companion file, campaign audit report 

Jon
Alison

Cris / Dan - Technical team 
test verified 
other priorities are cooking

sample file outside of snowflake 
- sense of the schema 
jack leads BI 

sample incoming to us
- email 

Do we need another face to face? 

Alison - DPA redlines. Legal still might be a block. 
Jon will help navigate on the legal front. 

## 7/24/2023

FIX DISQO & MFOUR first thing

performance investigation 

infra channel process update 

Retro items:
learned, cluster_by 
backlog mess
Matt onboard
Dylan and Matt autoformat 

projects sync: 
Amazon S2S integration 

## 7/25/2023

UoPX scramble 

Gary: Label = "XFR_INFRA" 

Amazon

How to cover the timeframe for a deletion? 

Infra will set up SNS queue 
Will ensure AVA has permissions to read from queue 
"Doing terraform stuff" 

AVA - do the processing of the deletion request 
camelot - uses innovid schema
media agency - manages campaigns of clients
CKE client - deliver reports - first step for partnership with camelot
Desire is S2S integration
Is there sample data?



## 7/26/2023

UoPX update

disney + test pixel report 


## 7/27/2023

meta redux from Ryan

575 / 
213672839

66008654

UoPX merged 

add alex columns to all the _meta tables

## 7/28/2023

UoPX analysis

UoPX creative id 

mfour

## 7/31/2023

PR reviews

more UoPX metadata

## 8/1/2023

projects check in: 
amazon - 
sample Amazon Ramp ID deletion request? 

spilob stuff

Amazon thoughts: 
Can we get a sample deletion request with the Amazon Ramp ID as the identityType? 
If we opt for liveramp first and MAID secondary identifiers - will both columns be included?  If we do not capture MAID anywhere does the DPA tell us what we are obligated to do for MAID deletion requests? 

scalable model group meeting

cluster_by meeting

Just add a comment instead of actual cluster key

Point of clarification
- "do not track" / opt-out type requests - I assume that amazon will just not include disallowed amazon ramp id's from the stream for those type of requests.  Is that accurate? So retroactive delete is really the only use case and we do not need to include amazon ramp ids in any "not to be included" list. 

Can we get example data or test data to test the deletion request workflow against? 

continued amazon discussion
- option 2? 
Delete and re-import all of the data each month
- option 3? 
delete amazon ramp id
rest is "de-identified" 

Josh: does option one pass muster?  

## 8/2/2023

Amazon questions 

mfour discussion with Dylan

How to join on domain mapping? 

Data quality has a domain name to alexandria entity mapping. 

Fix the way data quality does the mappings? 

spilob discussion topic

amazon
Question for Josh - would EDO be comfortable not following the crosswalk_hh key all the way downstream

## 8/3/2023

amazon deletion 

TODO: 
Amazon deletion request drive
Camelot S2S integration

Pause:
A+E feed S2S integration 

Question for DSci - is there a syncronous ack for a cache invalidation if we go with option 1? 

## 8/7/2023

camelot s3 ticket opened

camelot data request follow up

A+E follow up 

## 8/8/2023

domain mapping for mfour 

amazon update 

domain mapping - laura, matt, dylan, DSci 

amazon data deletion requirements

modeling run with record level data
- remove everything that could be covered
- purge cache 

AVA removes record from interface views 
- and anything upstream
Wait 3 days
AVA triggers deletion operation
- what does that look like?  
provide a snippet / stored procedure to perform the deletions
and perform deletions on s3 objects 

slightly targetted
- CTE to define ramp IDs or crosswalk_hh level 

drop any events that contain that crosswalk_hh 

## 8/9/2023

debug amazon delete stuff

liveramp meeting notes: 

ampersand and amazon conversation
- they have some solution for ampersand

Josh requested start with amazon

pricing discussion - 
??? 

FBR? 
alternative pathway? 

1:1 notes

UoPX report frequency and "babysitting" & priority

AWS permissions
Dylan - staging & non-prod 

liveramp meeting status

pursuing a S2S integration with ampersand, using for AEC reporting
connection to identity spine 
liveramp will do the connection 

debugging amazon permissions for sqs and stuff

## 8/10/2023

UoPX metadata reports

ci jobs fix

amazon work ready to test, scheduled time for Tuesday

## 8/11/2023

merged AVA-2111

fixes for Inan's PR 

standup got derailed

OP-284 fubotv springserve metadata evaluation

## 8/14/2023

Ryan & Dylan RE: mfour testing 

Russell 

project checkin - 
options for SpringServe 
understand level of coverage

## 8/15/2023

amazon data delete meeting 

setup test data in s2s integration 

test campaign: 

total volume
match rate


## 8/16/2023

amazon stuff

1:1 notes
- S2S meeting with Will and Chris RE: client pestering? 

Fubo ACR based advertiser mapping 
What would a test tell us? 
non-trivial engineering cost
- would also take us a part of the way to real VGS integration 
Edward sees value in a test 
- tell us what proportion of fubo creatives actually match something? 
- vs. domain mapping re-architecture? 

without that we may still be able to prioritize
proportion of event stream with hashed_creative_ids with the metadata requested? 

is admomain == advertiser domain in "requested data"? 

- flesh out backlog grooming / sprint planning 

"pre-groom" 


## 8/17/2023

Suresh quick meeting

along with amazon tables add to Inan's work to be sure they are detected 

## 8/18/2023

amazon continued

replan for amazon

## 


## 8/21/2023

Camelot / A+E level set meeting: 

- problem statement
- pester them on the s3 side 

call - verify the s3 integration 





follow up on Edwards doc

retro items: 

grooming / planning :( 

++ amazon progress

++ infra debugging pair 

-- aws roles without permissions 

-- a real staging environment / account 

++ dbt seed as an airflow job

++ PRs open < 10! 

-- grooming / planning with OPS board as a side channel? 

pump messages into s3 and ack from s3. 

## 8/22/2023

amazon data delete 

amazon meeting agenda
- kms confirmation 
- test into the s3 bucket 

UoPX metadata update

amazon test data delivered 

## 8/23/2023

amazon deletion stuff continued

ampersand
- occurance data we can match at household level
- linear data
- logged through set top box 
- no reliable IP

data would come through liveramp
no idea on schema
needs more detailed resolution on schema 

data deletion requests from ampersand?  

1:1 notes

amazon unpleasantness in general 

gross approach
- respects patterns we already have
- pragmatic way to ack'ing 

There is more awareness that we don't want engineering to babysit teams

Super TAM - this role **should** fill that gap

get all data popped off queue 
- 

DAG stop at loading for now
locally run dbt models to create models
unloader 


## 8/24/2023

amazon stuff churn on stuff

## 8/25/2023

amazon 

and more amazon stuff

## 8/28/2023

Josh re: liveramp amazon fbr workflow 

amazon continued

## 8/29/2023

amazon continued

2 concepts of match rate

resolution rate - % of data liveramp can give an ID for
70% 
match rate - % overlap with inscape 
7-15%

## 8/20/2023

amazon 

Questions for liveramp
- mobile id AND amazon ramp id
- 

extrapolate to volume of impressions 
# based on unique ramp ids in stample data 

50c / k

25k 

1:1

liveramp
- confirm we pay for each match
- i.e. 4 games per month, pay 4 times? 
- 

838k MAID

3.6 M liveramp
1.7M unique liveramp ids


Turnaround time during integration phase

## 8/31/2023

amazon stuff

## 9/1/2023

looked at airflow errors on lighthouse
- not prod-green instance so who knows? 

amazon continued...

1051125 before running


## 9/5/2023

amazon cleanup a little bit 

liveramp ticket opened

# TODO: verify amazon data flow for deletion requests

TODO: look at existing liveramp and make sure we only send distinct

TODO: clean up amazon 

TODO: follow up with infra on permissions 

## 9/6/2023

twitch / streaming / audio platforms 

match rate for test campaigns? 

range 

how to compute match rate?  

liveramp ids
for impressions with ramp IDs how many are we able to match with our liveramp ids

by campaign 

amazon continued




TODO: review suresh's doc 

TODO: fubo s2s demand partner & site section


## 9/7/2023

amazon cleanup 

fubo and nbcu mapping distraction 

discussed fubo and nbcu with Matt


## 9/8/2023

amazon cleanup and test

lions gate AEC sync

creative_id
placement_id
creative duration
publisher
target group = ad group (can we get metadata) 

add proactive dimentions
instructions for delivery 

retro on sharing query results via slack :( 

## 9/11/2023

virgin voyages pilot 

hmmm...  2 weeks on 2 weeks off?  

NFL games targeted

Nick - delve team? Belarus  
OTT & TV360 accounts - separate programatic ad team

ask platforms to work with

kick off call 
- provide pixel
2 week timeframe about right 

good highlight of metadata - 

## 9/12/2023

read thread on paramount gilead 

still need sample exposure files
what columns are missing from that for a real analysis

got liveramp integration hopefully going

added outcome_name to common DSci interface

## 9/13/2023

sync on setup guide 

polestar - october 1st

tubi meeting 
 
Stefan, vp or product
Adam pm on 
Alex - ad product team
s3 integration - 
event log 
one time send
pilot 
their bucket 
- roles

amazon liveramp integration ready for review and compelted

1:1 notes - amazon liveramp integration 

forcasting capacity for first part of s2s integrations
onboard someone? 

follow up on lionsgate with Chris

outcome_name

## 9/14/2023

check count of non-amazon-ramp impressions for poor match rate campaigns

change schedule to daily

remove backfill from mwaa/dags/extract/s3_to_sns/manifest.yml

polestar metadata

23.5k 

29.3k acked

grouping indicator - two output rows may have same grouping indicator came from 
single input row


follow up ticket with liveramp to clarify mapping. 

# of distinct amazon liveramp ids
/ 
# of distinct devices which match 

out of all amazon ramp ids received
how many match to at least one inscape device

number of amazon events that match at least one inscape device
total number of the amazon events 

## 9/15/2023

amazon continued

virgin voyages - moved ot OPs, Russell

inscape metadata discovery 

## 9/18/2023

TiVo inscape metadata meeting 

Retro: 
amazon across the line! 
kudos - Russell helping with pixel PR 
kudos - Peter getting match rate calculations hwppy

## 8/19/2023

amazon fix

inscape email draft

snowflake meeting 

ml flow 

apache iceberg 

amazon view

## 9/20/2023

liveramp continued

1:1 notes
- ad_type etc.
- common dsci interface maintenance
- outcome_type

UoPX 

infra

clear acceptance criteria for infra 

inscape metadata switch note

## 9/21/2023

Dentist

lionsgate email draft

liveramp saga continues

s2s draft email example from lionsgate
benefits 

## 9/22/2023

experian notes: 
all in chicago. 

paper work is signed

lauren
Megan
Susan - day to day point of contact

Our bucket or their bucket? 
week for s3 bucket
8 hours for sftp

monthly cadance 
one time setup delay or continual latency? 
setup only

vizio mapping table sample? 

Susan to send details - share with infra and get bucket created. 

file format / preferred file layout

key? is it hashed device ids?  

time frame and backlog of previous data - uncertain
2 years of data? 
data security / compliance may be a blocker on that

monthly metadata delivery - for hashed tv ids. 

email probably easiest
- ask suresh to include me on chain

File format
gzipd csv or parquet 

update stream or full overwrite snapshot? 

test file 

Role ARN or user / key

alarm / alert on failed file delivery 

UoPX metadata load

## 9/25/2023

stuff

dsci follow up on fields for extending dsci interface

amazon view 

~ 80% 

~ 30% 


## 9/26/2023

availability - dashboard? 
methodology overview 
no hard impressions cutoff
generally we recommend 10M impressions
20M? 

## 9/27/2023

1:1 notes - 
infra strategy 
experian 
dsci interface stuff

experian / liveramp 
- move to experian? 

Ryan re: UoPX

discuss with Peter 
- timeline
- realistic
- arbitrary target segement as model inputs 
- model and reporting outputs handling of variable features 

Thoughts for retro on experian / liveramp

## 9/28/2023

experian 
technical integration and pricing 
edo household id
edo luid 
vizio 
amazon workflow
experian does conversion from amazon -> edo_id 
s3 integration works, header row, normalized fields
returned output - will share standard 

latency - couple day turn around 2-5

crosswalk 
mapping file 

UoPX 

publisher unification query

blade, old navy 
cal psyc, dave and busters

permissions infra discussion 


UoPX continued cleanup


## 9/29/2023

looked at some PRs

blade metadata



## 10/2/2023

##RETRO ITEMS
Kudos - Dylan - Mode > PopSQL

match rate first, 
should execute tomorrow
test file in parquet format by end of week :) 

vizio sent entire mapping file - the whole universe
experian master is last 6 months 

the metadata will go back 5-6 months 

inscape sent edo_id mapping
exprian has metadata to join 

inscape hashed id
edo device id
data append 

confirm vizio device id hash is the same 

rolling window of 6 months of data, but always latest 6

tubi
- autoplay is required for them, they hit a technical limitation 

## 10/3/2023

lionsgate 

hulu stuff for Matt

seed cleanup pr 

## 10/4/2023

1:1 notes

lionsgate 
experian and amazon 

common dsci interface and s2s integrations? 

check on whether lionsgate data is ready to review 

liveramp and amazon retro
balance communicating progress with amazon vs. increasing concern on liveramp contract
- could we have scoped work for amazon more effectively to include the liveramp contract change costs? 

## 10/5/2023

pull requests reviews 


## 10/6/2023

experian - matching records only or sum of each parties total?  

## 10/9/2023

amazon 1p pixel was not set up from impressions

experian
1.6M expected in first round, then full sample set

amazon either liveramp or maybe next year

## 10/10/2023

a little cleanup, prep for experian, lionsgate

meta cleanup branch and ticket

lionsgate

very handy that Inan's detect extraneous schemas work was handy for 
broken permissions

## 10/11/2023

lionsgate 

1:1 
S2S common interface 
OKRs? 

panel linkage - 
shared ip map to crosswalk_hh with the ttd persistent identifier 

PR for Dylan

## 10/12/2023

lionsgate ttd continued

experian load parquet troubles. 

## 10/13/2023

amazon ingest 

cfids: 
594186297576467668
590069586373163491
589520740113112414
588725844957821558
588420090718157896
586482707368266338
584485629496594882
582913945186081526
578856784679161009
576822774575318907
576758680233450026

order_ids: 
583376691153795985
583096340537765487
588463500718699538
594243977146476445
580249534279886039


experian started

## 10/16/2023

request is in, sample files sent

liveramp - Edward noted hashed ip is better than liveramp

liveramp is faster for them

would be FBR 

## 10/17/2023

meta cleanup

ORDER_ID
594243977146476445
579027888370128600
580249534279886039
583096340537765487
583376691153795985
587515655336583117
587431033115667433
588463500718699538

amazon stuff

## 10/18/2023

netflix prs for Dylan

SOC 2 audit 
- part of review requirements 

1:1 topics
- performance review
- peer reviews? 
- OKRs

amazon stuff continued

for modeling purposes, most will be grouped together

clean up empty strings as nulls

split "confidence" from "guess" 

Age -> number
Y -> make boolean 
min / max age in hh

may want a table per person

where not explicitly noted, just pass through the encoded values

ranges to booleans 

metrics on fraction of time stuff is actually populated.  

by person number what is populated 

## 10/19/2023

lionsgate householding fix

experian mapping continued

## 10/20/2023

DQ meeting sit in 

notes: 

whitelisting discussion 

PR for fubotv up and ready for discussion

PR for amazon not quite ready


follow up on priority
- experian
- lionsgate
- tubi
- amazon 
- paramount? 
- experian opt out handling 

quote escapes on copy


## 10/23/2023

sick day

experian notes: 

## 10/24/2023

sick day 


## 10/25/2023

back to work

experian remap for csv input 

derailed with lionsgate 

persistent identifier for tdd

While it is very sparse it looks like 7M / 16M impressions with crosswalk do have the identifier

hashed persistent id OK for grouping by, but further TTD integraitons we probably want 
to go through the mapping maybe? 

## 10/26/2023

experian work restart

standup
- experian
- idea for improving performance on the metadata joins 
- fubotv springserve interface? 

backlog grooming
uber? 
make tickets, ask 

1:1 Notes

performance review, 
email to edward
uber tickets
liveramp progress visibility? 

Dylan coverage while on leave

fubotv pairing with Dylan

## 10/27/2023

lionsgate cleanup

take over fubotv

fubotv PR questions up

clean up pixel metadata branch

performance review 

## 10/30/2023


## RETRO Items: 

Lionsgate across the line

Dylan had a child

Illness :( 

Uber 

## amazon PR still needs alexandria mapping

uopx check

amazon update

fubotv stuff too

## 10/31/2023

fubotv stuff 

vv pr 

lionsgate reports in mode

fubotv across the line

## 11/1/2023

mostly just taking care of Jiafu

fubotv continued

1:1 topics
performance review
fubotv alex mapping 

amazon ready to go 

## 11/2/2023

lighthouse PR

amazon ready to go

metadata updates for lighthouse 

laura help with git stuff

## 11/3/2023

uopx fire drill

amazon code review

fubotv linkage PR up

amazon and fubo across the line

ran dbt job to rebuild

dropped old prep tables

fix mobile ID in amazon hard coded shit
- dont actually need to fix

## 11/6/2023

quick amazon fix

request to rebuild fubotv 

amazon mode dashboard 

## 11/7/2023

tubi / uber 

turbotax / weiden 

## 11/8/2023

experian sync with DSci 
experian pr ready 

follow up with Chris and Jiafu on Uber status
 and Matt Lowery

recurring question 

AVA-2577
snowflake stage 
query in mode 
directly look at lighthouse events from s3 bucket to verify
Talk to Jiafu and Dave on the topic 

## 11/9/2023

liveramp chat

fubo special use started

amazon liveramp fire drill 

## NOTES: 
maybelline - just not mapped
airforce - just not mapped

paramountplus.com
mapped with no campaign




Matt L on mad props for engineering ++ 


## 11/10/2023

liveramp meeting notes: 

Andrew, Layne 

collect liveramp ticket #s.  
- implementation team is separate from CTV for FBR
- LiveRamp case 02665274
- LiveRamp case 02659029

## 11/13/2023

Turbotax kick off meeting notes: 

sds? 
s3? 

append only stream and metadata? 

tech resource not available

postponed until thursday


1:1 notes: 
experian metadata
outcomes data
performance review? 





RETRO: 
Laura demo ++++
Edward demo ++++

Target pairing with Russell. 


## 11/14/2023

got a test file ready for LR 

uber integration started
EJ to continue from branch

liveramp 

## 11/15/2023

liveramp stuff 

1:1 notes: 
performance review
tubi response 
we do need un-aggregated, propose a quick sync on the subject
liveramp meeting
WURL!? 

spine and panel linkages update from Aaron
update strategy
- occurance data 
new copy for all usr_r views
new spine
- don't materialize crosswalk_hh
- only expose inside view with join 

Eunice is go to for technical implementation

immediate follow up after test file response


Performance review notes: 
Find higher-leverage / higher impact
How to keep velocity / balance with work / life.  

More pairing, bring in earlier in design discussions

Smaller, unblockable work also in the backlog. 

## 11/16/2023

liveramp continued... 

liveramp next round > to_date('2023-11-11')

outcome dsci interface meetings

## 11/17/2023

amazon liveramp plan

infra to delete bad file
x

ingest the new data
x

create materialized table with events and the edo id instead of amazon


create extract for events without edo id

new liveramp export with event extract

remove old stuff

target metadata too

EJ: uber dsc 
and add Peter and Ryan to diagnostics permissions. 


## 11/20/2023

49M

49550069
from: 
select count(distinct event_id) from AVA_AEC_PROD_USR_R.DSC_AMAZON_SS_FROM_AMAZON_SS.S2S_IMPRESSIONS 
where crosswalk_hh is not null 
and event_timestamp < to_date('2023-11-11')
and event_timestamp > to_date('2023-10-10')
and alexandria_id is not null


and total: 
select count(distinct event_id) from AVA_AEC_PROD_USR_R.DSC_AMAZON_SS_FROM_AMAZON_SS.S2S_IMPRESSIONS 
where event_timestamp < to_date('2023-11-11')
and event_timestamp > to_date('2023-10-10')
and alexandria_id is not null

483901856

uber PR review

discussion topic, parallel delivery with crosswalk join at view layer? 
- is this now? or soon?  

lr meeting notes: 

implementation doc needs confirmation 

## 11/21/2023

amazon liveramp stuff

draft PR up with branch AVA-2617newexport

review packet

## 11/22/2023

Ask Jiafu about paramount 

justworks confirmation for tax stuff

WURL

WK + turbotax pair with Inan, Ryan or Edward

Next up on deck - refine process and review the epics on [Tooling] 

paramount needs a DSC with debug permissions for DSci

## TURKEY DAY break 

## 11/27/2023

retro: 
turkey day

TODO: db object detection scrub: 
virgin voyages

NOTES: 

current smartsheet template

test export for LR 

uber hotfix

## 11/28/2023

uopx update

virgin voyages view w/ w/o metadata

wurl kickoff meeting 

## 11/29/2023

target check 

pandora work with EJ

1:1 delayed
- virgin voyages

## 11/30/2023

virgin voyages 

pandora 

## 12/1/2023



TODO: liveramp event ingest
- create table, create new extract table
- move the event_id to after liveramp FBR


## 12/4/2023

turbotax 

pandora follow up

## 12/5/2023

turbotax ready to go

liveramp refactor continued

follow up on fubo

## 12/6/2023

turbotax refactor with Ryan C

1:1 notes
- turbotax learning
- infra "aec" definition and exporting using airflow

## 12/7/2023

liveramp 

turbotax 

wurl

Data onboarding 
Notes: 
lighthouse stuff and pixel onboarding - Russell is working on it
Suggestion: pair with Dave on a S2S integration 
And understanding our process / responsibility 

Dave wants to be able to verify data is present in s2s integrations
Still developing 


process development 
Notes: 

## 12/8/2023

turbotax merge

jc penny pr

wurl

## 12/11/2023

wurl

tubi work started

Tubi questions: 
There is not metadata
where is dim_8? 


TODO: check turbotax 

## 12/12/2023

extraneous db object detection 

tubi

## 12/13/2023

amazon fire drill

tubi data 

extraneous db detection stuff: 

Would it make sense to run all in staging
and then look at 

## 12/14/2023

## 12/15-12/18 out sick :( 

## 12/19

tubi metadata

wurl check on status

target metadata validation needed

fubo 

wurl bug - Dylan did that

## 12/20/2023

Target
fubo
help for Russell

1:1 
-  
tubi stuff

TODO: 
target metadata update

## 12/21/2023

target metadata merge
fubo principal merge

mapping update

## 12/26/2023

wurl didn't deliver

PR review for Dylan

uber 

## 12/27/2023

wurl and uber cleanup

pr up for extraneous db

## 12/28/2023

wurl report spec

amazon plan: 

temporary extract of legacy prep events

temporary archive of prep events for checking 

extract events for LR to s3 temp storage

extract events for LR to LR bucket

verify union table with LR response events

remove lr mapping old

delete amazon lr export 

remove temporary export manifest and job


## FTO for a couple days, new years

## 1/2/2024

wurl situation with wrong counts :( 

amazon stuff

527.5M rows of amazon events

## 1/3/2024

amazon stuff showing up from LR 

233.2 

525.2 M rows of amazon events.. 

## 1/4/2024

- Out sick :( 

## 1/5/2024

virgin voyages missing placements check

amazon count check :fear:

old navy sanity check 

1:1 notes

sick
amazon
wurl
old navy
comp review and update, backdate to 1st. 
salary and equity
1:1 
1:2

Jiafu aec efficiency and always on
Contribute and lead in that process 

## 1/8/2024

inscape discussion topic 

wurl 

OKR readout 

block off time with Jiafu / Suresh to talk about pixel metadata

pair with edward on nbcu


## 1/9/2024

wurl confirmed across the line 

NBCU review for Dylan

test failure for disabled view for DSci

something to think about.  

## 1/10/2024

hypernormalized metadata demo

uopx 

uber publishers update

pandora creatives

## 1/11/2024

check on WB and turbotax 


value stream map for entire workflow from project plan 

## 1/12/2024

target, old navy 

amazon too

## 1/16/2024

fubo spec reviews

tubi stuff

## 1/17/2024

amazon meeting notes: 

experian vs. liveramp 

amazon paid vs. advertiser paid

enable data flow for advertiser / agency
- facilitating the data flow
- approval and s2s integration 

prime video ads - testing phase
- all amazon paid measurement 

cross publisher 
intention is to test on prime video properties 
- beta framework
- no direct advertiser or agency yet 

5 to 10 studies 

checklist for 5 to 10 campaigns

then open beta 
cross publisher at GA 

TNF is a separate property 

performance of non-live sport properties 

success criteria - Dan will communicate concerns 

freevee?  - .com business 
sponsored products and brands

brand specific is in DSP - live sports included
- nuance on how the inventory is served
- Sometimes hard coded ads, not in DSP
- Moving into the DSP, but it may take a while 

NOT live sports are all in the DSP
- freevee and prime video, and twitch 
- 3rd party streaming inventory too
-- other publishers with partnerships 
- maybe firetv too? 

call it all "prime video" 

twitch and firetv too? 

intake form for campaign id 

program level tracking from Shreda

amazon paid - study id - denotes amazon paid campaigns

if no study id then advertiser paid 

no objections if we go to experian
general better match rates for liveramp

amazon plans an in house transcoding appliance 
- cost of transcoding will be on amazon 

timing and bandwidth may limit amazons ability to respond quickly if we come back with this request in 2 months  

experian bad with audio and twitch  
- twitch skews lower 

liveramp is more stable across twitch and other video proxies 

tubi, continued

## 1/18/2024

tubi stuff continued

1:1 notes
- tubi dimensions - is there anything Edward remembers? 
TE checkin, how is Edward doing? 

cardinality and distinct values 


1 - appreciation for flexibility during Edward stuck in TE land
2 - Thoughts on Edward being missing what should we keep


## 1/19/2024

a+e data showed up! 

A+E

## 1/22/2024

ae networks continued

TODO: update cadence for A+E

Retro: 

Seemed like a very long sprint 

tubi notes: 

limited by fields that are propigated 
through to reporting later

which dimensions are included in the efficacy model? 

3, 5, 6 - 

special use 1 = dim_1 

A+E brett what comparisons or cuts clients want to see

## 1/23/2024

aenetworks needs DQ mapping 

PR reviews

discussion topics: 
tubi scoping
tubi mapping
TT and WB back on - ready but talk to MA/Sales 
mass mutual

## 1/24/2024

mass mutual hulu whitespace

ae networks mostly there

reporting standup notes: 

fubo SE toyota follow up

turbotax follow up

tubi to EJ 


1:1 notes
Harsha and Tubi
checkin on OPS style stuff
- context from NBCU pause ads? 

report spec -> acceptance test 

turbotax stuff finished hopefully


## 1/25/2024

se toyota - Dylan
filter for SE toyota 

mass mutual 
green light as well
- Russell 

nbcu pause ads 
- Inan 
19 whitelisted advertisers 

another nbcu drop 

A+E 
- Laura conversing with client today 

Tubi 
- DSci suggested grouping 
- mapping process 

total records WITHOUT filtering and 
add domain 


NBCU infra ticket 
then Inan? 

arch review 

## 1/26/2024

high cardinality group labels 
- refine group labels that are never used
- opportunity for improvement 
- report spec scoping? 
- cost / size of required resource? 

buy side value stream mapping 

all advertiser scope
all campaigns

TODO: 

bronze squad 
Data ingestion value stream

## 1/29/2024


TODO: Uopx

value stream 

examples: 

lighthouse
UoPX
amazon (s3) 
nbcu 

A+E notes: 
networks
- a+e
- history
- lifetime

looks like site info probably needs to be parsed out somehow

top brands covering 80% of impressions?  

reduce group labels and set time range 

group labels 


- pilot stage
- 

mapping and category choices 
automated priority queue for mode WITH 
the context of category choices


## 1/30/2024

A+E update to use site_section_name

nbcu discussion 

Chat with Matt L on NBCU and stuff

## 1/31/2024

A+E discussion

nbcu questions

- is this data a superset of the earlier deliver


1:1 notes
- raise? 
- process mapping stuff
- NBCU 
- documentation and caveats 

## 2/1/2024

TODO: Pause ads for NBCU

turbotax notes: 
- interpretation of SER / SEV

mostly confusion about EV and ER

creative name as identifier 

sick day 


## 2/2/2024

NBCU confusion 

virgin voyages NBCU analysis

bronze requirements 

measure report requests 
- how often do we need to make a change? 

requirements in high level headings

documentation 

one time onboarding improvements

ongoing ingest improvements

TODO: 
refine requirements for bronze

separate pilot / first time from "Always On" 

always on focus of tickets.  

## 2/5/2024

nbcu scoping continued

pause ads done

xp otezla 

streaming campaigns

improved load balancing on ops work?  

## 2/6/2024

nbcu discussion 

disney, 

bronze requirements stuff

## 2/7/2024


nbcu 10 brands clarity 
&& otezla confirmation 

1:1 notes: 

Matt raised "what has not been custom" 
- Risk of rework after running
- Ava, DQ and DSci coordination - then Sebastian 
- interface customization and filtering in the report spec? 


NBCU endless confusion 

What is "custom" 
- what can be standardized in the "customs" 

Retro total reports, each customization 

dictionary of mapping client columns 

flexible bigger interface to data science 

Enumerate each "custom" ask 

Downstream in DSci handling "how do we want to break out reporting" 

## 2/8/2024

pixel view refactor

NBCU PR up

Disney meeting notes: 

Karl - data strategy
- main contact
Emily manager at data strategy

data masking
- always on 
- advertiser / campaign level may not be there

star schema format
- metadata update separate from event stream

no campaign / creative NAME
ad unit id = placement_id 

order_id 

some advertisers will be removed 

5 day lag on data, 
publisher column for Disney+ vs Hulu
impression id 

merge required for id 

stream + documentation on advised use

data retention policy - there is not clarity on exactly how long we can retain data

They will be hand rolling our stream, per each partner

pay review 

190 base
equity refresher - 1250 shares 

## 2/9/2024

NBCU sync

Changes to the underlying view

Query is scanning the entire fact table 

1:50 per day
on an XL 

filter by impression date - clustered by impression date
and filter by campaign_id 
reference view 

business context 
publisher - SS
and buy side studies 

hesitant to share the entire thing 

share campaign_ids 

Experiment on capturing buy side campaigns 

Test LR campaign? 

## 2/12/2024

refactor events cleanup

nbcu discussion 

creative_id analysis 

mass mutual analysis 

## 2/13/2024

nbcu check 

TODO: Raw -> Bronze AC 

UoPX update

Pandora pre work

## 2/14/2024

pandora check 

netflix catchup and check

1:1 notes: 

outcome pixel mapping 

shift cost back 

## 2/15/2024

nbcu buy side stuff

pandora 

uopx 

## 2/16/2024

pandora across the line

nbcu and fubo stuff

lighthouse refactor test

## 2/19/2024

Notes on always on and bronze

report request definition 

document communication channels 

granularity - 

document test and learn for each client and retro

## 2/20/2024

Through bronze checkin 

NBCU pause ads spec sheet review

FUBO MLB spec sheet review

Old Navy request

pandora spec sheet 



TODO:

FUBO sports clips

FUBO MLB 

## 2/21/2024

UoPX check nbcu 

pandora check nbcu 

FUBO sports clips
spec review


A24 check, no data

Old Navy check

## 2/22/2024

nbcu fire drill on dominos and tmobile

old navy ready 

pandora missing alex ids from mapping nbcu 

## 2/23/2024

88052295

20802790

NBCU check for dominos and tmobile

look at whitelist


write tickets for raw -> bronze


## 2/26/2024

DHD ticket for Matt

TTD a24 data arrival 

## 2/27/2024

ttd a24 

Scoping and grooming for tickets from the bronze level spike

## 2/28/2024

FUBO MLB

1:1 notes - 
NBCU status
A+E


## 2/29/2024

feeling unwell 

uber counts

**Out sick** 

## 3/4/2024

A+E always on meeting 

view stabilization time - 
deletion requirements 

A+E stream setup

retro: 

sailboat retro


TTD A22 fix 

uber eats

disney deletion request chat with EJ

still pretty sick

## 3/5/2024

TTD A24 mapping

## 3/6/2024 

uber eats metadata

threshold for panel linkage metrics?  

meetings

1:1 topics

Ops balancing 

Daily broadcast of AEC ops work 
into analog video afficiandos 

## 3/7/2024

uber 

reporting standup notes: 

uber eats status
in design discussion 

mass mutual 
metadata update
outcome mapping 

A24 kickoff

univision kickoff

NBCU eli lily 


Finish A24
with EJ 

##3/8/2024

notes for AEC ops work - 

TTD A24 - EJ 
Univision - kickoff later today EJ / Tim 
NBCU Mounjaro - kickoff to be scheduled by Suresh - Inan
Mass Mutual - Russel working metadata
- concern about outcome counts 
- need to discuss site mapping 
- publisher is currently coming from publisher

disney sample data review

Book travel for all hands

## 3/11/2024

aec ops work

Disney notes: 

brand vs. category 

need a new example report for them without 
category report for "Hulu" level, but including 
category at linear vs. disney property 

publisher field confirmed + network 


## 3/12/2024

TTD a24 check, data is bad

mass mutual data checks :( 

a+e campbells check 

more mass mutual 

## 3/13/2024


1:1 notes

NBCU updates 

What is next?  

fixed the ttd a24 situation 


## 3/14/2024

documentation 

liveramp checkin 

univision 
EJ leading 
DSC PR merged, Infra ticket for TF execution by EJ 

update software



## 3/15/2024

univision checkin 

TTD site mapping 

## 3/18/2024


## 3/19/2024


univision 

ttd and mapping 


## 3/20/2024


A+E waiting on spike based

NBCU 20 streaming reports
- EJ to lead
- Matt to confirm campaigns with client for cross region copy 

NBCU Tmobile and Dominos with Ryan 

univision - mapping complete, waiting on infra 

UoPX ? 

Polestart o still in scoping 

discussion topic, preferred method for default environment var? 

infra quick checkin 


infra AVA-2990 discussion on TAM permissions 

sync with Jiafu and Josh and Edward to make sure we are on the same page 
on NBCU 
Once proposal ready for client consumption 


1:1 notes

Raw to bronze 

Ticket templates for through bronze ava-aec 

per client onboarding and remediation 

poll for impressions vs occurrences 

What is the goal of through bronze 
remediate data integraitons 

align on occurrences vs. impressions cleanup ticket 

TODO: 
sync with Jiafu and Josh and Edward to make sure we are on the same page
on NBCU
Once proposal ready for client consumption

## 3/21/2024

univision check 

ops status

polestar 

ttd a24 

nbcu streaming reports questions on data 

uopx expecting new nbcu data as well as new metadata 
ends 3/31 so there will be mapping and another NBCU update

interface for DSci to query
- time range
- brands 
- union with prioritization 
- model input layer 
- versioning on mapping table?  


## 3/22/2024

follow up on mass mutual espn 

thread on NBCU 

OPS: 

univision issue with duplicate events

massmutual investigation on the issue on publisher espn 

put in justworks pto for monday

TPM role 


TODO: 
Matt L thank you and appreciation 


## 3/25/2024

reporting ops standup stuff

TTD A24 - Ryan E has identified some issues - checking movie outcome volumes 

Mass mutual - refreshed espn over weekend
Ongoing discussion on the report results

NBCU waiting on client data 

Polestar - waiting on outcomes 

Univision - questions on deduplication with client.  Waiting on response

UoPX - waiting for NBCU data

Disney - sample data should be coming soon 



diagnostic summary at reporting layer 

match rate thresholds - where does that logic live
- and how to flag "ready to run model" 

taxonomy joins 

identity resolution refreshes 
- what is that interaction ? 

model group filtering 

time travel?? 

model group definition change 

efficacy model features - filter and volume checks? 

## 3/26/2024

ops status

TTD A24 - investigating

mass mutual - revised and sent 

NBCU waiting on data from client 

polestar - kickoff today 

univision - need to dedup data ticket opened

polestar notes: 

NBCU data and still need metadata and interface created 

Always on AEC setup guide 

## 3/27/2024

power loss :( 


TTD A24 - Ryan debugging

polestar - Dave talking to NBCU
Partial data available from NBCU  

Univision - looking at crosswalk_hh issue, Dave to get confirmation on counts

fire drill on edo_pii_ip_mapping 

Notes on exposure cache
- access pattern is currently select * 
- after filtering
- What all filters need to be supported? 

- cluster on advertiser name

app service 

## 3/28/2024

Daily ops thread

NBCU - still waiting on data
Polestar - waiting on campaign to finish and data from NBCU 
Univision - blocked on issue in thread from Edward
UoPX - waiting for end of month and data from NBCU 

DDS appointment 

documentation and continued cleanup for ip mapping 

## 3/29/2024

ops reporting status: 

univision new data drop

waiting on NBCU for stuff

amazon meeting notes: 

who is paying liveramp? 

no measurement leads
sales needs information 
site visitation now Olivia from Shweta 
Not TNF is Olivia 
Lisa Kim - video insights 

APV - separate from TNF 

request for review of offering 
- probably Matt 

zillow - we already have pixels setup

hyundai 

appove measurement for the client 

study ID - approval to spend on the study 

already pixeled outcomes at hyundai.com 
- we pixeled zillow, are we setting up pixels for hyundai too? 

feasibility check step in 

Create ticket to close loop with infra on A+E always on

continued cleanup

## 4/1/2024

matt re: A+E networks 

snowflake tasks 

we could use airflow 

follow up with query performance analysis 

Ops thread

coty covergirl
CM360 pixel - already setup  

NBCU 20 streaming - waiting on data 

polestar - waiting on nbcu data 

uber teens - waiting on data 

univision - new data delivered 
EJ 

UoPX need to update metadata and capture NBCU data 

## 4/2/2024



TODO: 
polestar
coty covergirl
uber teens
univision 
zillow 

hyundai - amazon data starting
but no zillow data?  
on hold until 4/15
Should we turn back on liveramp integration?  

univision - EJ to follow up with deduplicate and impression ID
probably requires full refresh


ops status
zillow on hold until 4/15
coty covergirl - should probably start early on metadata and interface
NBCU - validation on campaigns we received with client 
old navy - will be waiting on nbcu data - need to create new interface with NBCU data 
polestar - will be waiting on nbcu data - need to create interface
uber eats - should be good to start - any volunteers?  
univision - data delivered EJ to finish AVA-2924
UoPX - should be good to start - will need a ticket and NBCU campaign details from Dave



Can infra just add a column for "created_at" or "updated_at" 
in the stream? 

surrogate keys should match 

infra to generate timestamps OR ava owned timestamps 

chat with Dylan about A+E 
should get infra to just generate an "updated_at" or "loaded_at" column 

amazon liveramp refactor 

## 4/3/2024


ops

uber metadata - any volunteers? Might be a good pairing opportunity 
UoPX - in progress 


ops thread!  

covergirl - volunteers? 
Disney - should be getting data soon
NBCU - still waiting on verification of view 
Netflix always on - follow up meeting this afternoon 
OldNavy - needs nbcu data - any volunteers - mapping work should be in a ticket today
polestar - same as old navy
uopx - metadata in progress but also pending nbcu data delivery 
uber eats - volunteers?  



summary of work in need of volunteers
covergirl
disney
oldnavy
polestar
ubereats


A+E 

ubereats - Inan 

## 4/4/2024


Uopx ready for review

Ops standup status

UoPX PR ready here: https://github.com/bigdataboxoffice/ava-aec/pull/720/files - expecation is to run tomorrow 

NBCU 20 - still waiting on some data - looks like partial delivery is possible today
Dave, will this be some buy side and some sell side?  Or just the sell side campaigns? 

old navy - EJ to lead, still waiting on NBCU 

polestar - EJ to lead,  Still waiting on NBCU 

Uber Eats - Tim and Inan to pair on this today - expectation is to run on Monday

Univision - question about lineitem_name to placement mapping 

Disney - We have data!! No metadata yet - determining reporting strategy to scope metadata ask

1:1 topics

Daily thread
- volunteers? 
- ops tickets "in advance and ready to groom?" 
- voluntold IRE 


A+E always on
Amazon turned back on 

NBCU notes with Edward

By next 1:1 delegatable goes to voluntold 

automatable buy side interface 

OKR reviews 


cost per report

gold and output layer test for sell side multi category 

## 4/5/2024

disney checkin with Jiafu

Daily Ops Thread! 

Zillow - still waiting 
Coty Coverygirl kickoff to be scheduled
Disney - Data has arrived! Still working to define scope for first report 
NBCU 20 streaming report - waiting for data 
old navy - waiting for nbcu but metadata can start - EJ
polestar - waiting for nbcu but metadata and interface can start - EJ 
uber eats - work in progress - started pairing with Inan yesterday
univision - running
UoPX - Dave verifying, interface should be ready

OKR review notes: 
programatic? 

cost tracking 

pair with inan to get uber ready for review 

## 4/8/2024

sync on ops work 

ops reporting channel?  

Reporing ops thread! 


univision - negative lift observed in qa checks
UoPX - currently running 

polestar - waiting on data - EJ and I to pair today 
OldNavy - waiting on data - EJ and I to pair today

NBCU - 20 brand report should have data copied over today - any volunteers? 

covergirl - unblocked on metadata - volunteers? 

fubo - need to confirm DQ mapping for 15 category runs 

uber - checking interface and match rate today, should be able to run today 

Laura - stuff is on fire so mapping may not happen today as DQ is prioritizing spike based issues 

Uber DAG 
one without dedup, one with for uber outcomes? 

pair with EJ on old navy 


covergirl - Russell 

A+E meeting 

nbcu uber data mystery solved 

## 4/9/2024


TODO: 
NBCU endpoint for sell side - campaign filter upstream? 

Ops status! 

UoPX - report run, Ryan checking 
univision - rerun in progress 
netflix - aiming for Friday execution - there seems to be more mapping work here 
oldnavy - blocked on NBCU reference view share - metadata EJ working 
NBCU 20 brands streaming - Inan to work, this was apparently delivered - aiming for interface delivery tomorrow - let me know if we should pair
polestar - still waiting for NBCU data - EJ to work metadata 
covergirl - outcomes run through the 12th but metadata work can start now - Russell 
fubo - custom research report - need to read through - needs some mapping work 
uber eats - final checks on data in progress 

OldNavy and polestar - EJ 
Uber - data getting checked.  Match rates are under investigation 

amazon liveramp cost - 30k
for zillow 

nbcu stuff

## 4/10/2024

daily ops status: 

NBCU 20 brand sell side - interface in UAT - targeting report run tomorrow
netflix - may need some additional mapping work - Laura looking today
Old Navy - NBCU data delivery was missing some expected columns - under investigation - EJ  
polestar - Dentsu pushing for NBCU data - EJ  
Uber Eats - running 
univision - some concern on occurrences counts for modeling
UoPX - new research request - kickoff to be scheduled 
fubo regional report - may not require a rerun

964052886

0 without alex mapping 

76292817 with crosswalk_hh 

1:1 topics

IRE engagement on ops stuff 

AI - what is next in AEC always on for me?  

all 1p data feeds
- consider their state currently
- consider desired state in future 

Think about hypernormalized mapping in a different way?  

- sparse 
- filter
- cleanup? 
- date range? 
- object column

netflix notes: 
dq and reportability dashboard review prior to run 
are there other always-on clients we could pre-emptively dashboard? 



covergirl kickoff 
May 6 internal delivery 
Russell to lead
Aiming for interface delivery on 4/17

fubo kickoff 
q1 report

regional 

## 4/11/2024


Daily ops thread! 

old navy - should now have access to NBCU data with corrected columns - need to copy over
covergirl - Russell work in progress on metadata mapping 
NBCU 20 brands - needed additional campaigns copied over - update in progress
polestar - NBCU data unblocked need to copy over - metdata mapping in progress EJ 
fubo - ready to run 

review of outcomes silver and gold

nbcu 20 brand data check 

amazon deletion request liveramp situation 

@ laura when mapping can start for old navy and polestar

grooming

match rate funnel discussion 


Date range 
Uber raw occurrence count 
Uber matchable 10 occurrence count 
Uber 1p occurrence with crosswalk_hh count 
- bad household filtering 
- > 1 crosswalk
- inscape households > 5 devices 

## 4/12/2024




TODO: 
just fix the experian join 
where are we at with disney? 
just start disney


continued match rate exercise 

felt very ill and had to lay down


## 4/15/2024

uber match rate continued 


Daily ops status! 

covergirl - Russell has a ticket 
fubo - running 
nbcu - running 
old navy - Dave checking interface 
polestar - EJ PR in draft, can this make it across the line? 
univision - confirmation of "Verizon wireless" from client - needs mapping update
Uber teens - kickoff to be scheduled 

quick git check 

EJ polestar check 

retro: 

experian fix

disney start

polestar debugging 

## 4/16/2024

uber match rate stuff continued


Ops status 

Covergirl - Russell work in progress 
fubo - running 
netflix - running 
old navy - Dave trying to get more publisher mappings - may require another update
polestar - interface in validation - should be ready today
uber eats - running - still reviewing match rate details 
uber teens - kickoff tomorrow
univision - running 
uopx - 
amazon - coordinating zillow data delivery

uber match rate exercise continued... 

disney kept working 

nbcu missing campaign Entresto 

continued covergirl help 

## 4/17/2024

pixel process documentation 

Daily ops: 

new spreadsheet! 

https://docs.google.com/spreadsheets/d/1Xh7YbncYpFz3DKoh77cVaZ1D-aI3GOVbIb3czeydcZU/edit?usp=sharing

in flight
covergirl - Russell merged the last of the mapping updates this AM - in verification 
fubo - running
uber eats - re-run in progress and match rate analysis 
netflix - running 
oldnavy - ready to run 
polestar - running 
nbcu - running 
univision - running 
UoPX R3 research - timeline approved

upcoming
uber mobility - data in flight - Dave to create a ticket, kickoff today or tomorrow 
zillow - needs kickoff / data delivery details
netflix adding campaign name and updating interface - Tim

get disney data integration into an always on through bronze state

1:1 AO MMVP 
Uber match rate 
Disney


amazon 3p study meeting notes: 

goal 
- campaign is running and 
- edo is measuring 
- measurement results output as campaign is running 
- feedback into system for optimization 

example: 
one line item is driving better engagement
- shift budget to line item that is driving engagements 

prime video ads OR TNF 
- both 
- 1:1 methodology rathe than spike base
- no TNF

PVA campaigns - what is possible 

need volume threshold for line item level 
and frequency 

disney continued


## 4/18/2024

disney discussion 

daily ops thread

uber eats - running 
fubo - running - qa checks in progress
nbcu - running entresto - Ryan investigating 
old navy - rerun started
netflix - in progress
polestar - done
univision - verizon rerun 
covergirl - Russell working - Dave gathering more metadata?
UoPX R3 - should be ready to run  
Disney - Tim working - need metadata / plan for first report delivery 


Uber teens meeting: 
Inan to help with syndicated youtube exposures? 
Open question on the outcomes - what do they mean? 
- 


uber teens talk with EJ

disney draft PR up 

## 4/19/2024

uber - report running 
fubo - running 
nbcu - running 
netflix - running 
old navy - running 
univision - running 

coty covergirl - Russell merged last of updates this AM - Dave to verify interface
Uber Teens - EJ working on outcome ingestion and new interface 

reply to Peter and Ryan on netflix interface changes

discussion topic: netflix campaign mapping 

netflix would no longer be safe to cache 

disney refactor started

## 4/22/2024

disney cleanup

netflix campaign name mapping started 

ops status 

netflix - running 
fubo - mostly complete, running qa checks


old navy - finished running - qa checks
polestar - with Sebastian
covergirl - pending qa checks 
uopx research - expect to run this week
uber teens - discussing this afternoon EJ has work in progress

Upcoming: 
netflix campaign name: TJ working
disney: TJ working, draft PR up

DSci MMVP sync 

How to get the model run ids for a given report spec? 


## 4/23/2024

LR quick fix

daily ops thread: 

uber teen - EJ has work in progress, rescoping for all mobility exposures
UoPX internal research - in progress

mfour audio discussion topic freshness failed


EJ pr work completed
Aaron PR work compelted

distnict or qualify after?  
explicitly cast as varchar campaign_id in seed

prep_all_aec_occurrences 
- two keys 

still use coalesce 

tafee sync on MMVP 

output runs still complicated
orchestration with respect to both needs

client configuration / information 

fastest option is the ava-aec "seed route" 
- ? 

what determines "ready for end deliverable generation"? 

output_run_id and original report request **should** give everything they need

## 4/24/2024

Thought about netflix and campaigns

Thought about pixel metadata

daily ops thread

blurb for Josh to send to Paramount 
re: delivery pattern 

1:1 notes


netflix 

additional sk is supported 

netflix data delivery is not really "always on" 
so there may be out for adopting netflix to the strategy 

pixels / associated metadata cleanup task 
ask Dave 

feel free to imagine a much better state 

regional investigation for fubotv

old navy outcomes investigation 

uber teens pairing with Dave




## 4/25/2024

daily ops: 

are inscape devices being reported with correct zip code?  

fubo regional analysis ongoing 

covergirl - Dave checking 
old navy - Dave checking 


fubo regional analysis 

crosswalk_hh 2670898696112225472 is bad


## 4/26/2024


standup discussion topic - bad HH in NM

daily ops thread: 

netflix work refactoring continued

additional analysis on the bad crosswalk_hh - are there others?  

## 4/29/2024


daily ops thread: 

uber eats - additional metadata delivered Friday 

Upcoming 
netflix
disney


pixel metadata options
- sparse
- object
- metadata mapping as report spec options? 
- cleanup 
- upstream filters 
- metadata view with filters
- graph options? 

AI - sparse example for mapping to Dave
just for GM360 

materialize a distinct view into each pixel 

netflix, disney refactor continued

## 4/30/2024

paramount notes: 

Dave Krenn, Michele, Derek, Travis from paramount

Status: SOW, in legal

linear logs - 1p digital and linear logs 

campaign metadata linked - 

Dave - identity resolution 

Michele - advertising 

Derek - tech 

linear + digital and individual cuts

common identifier across both 

brand and product taxonomy - then campaign 

raw identifiers on digital 

matching process - follow up 

historical data - 

weekly cadence is our target 

3 day to settle?  

their fact stream may not be ideal there

15 day lookback window - secure share would automatically be updated 

but really smaller window - maybe 3 days?  

they are in us-east - will need cross region replication 

Derek - external table in us-east replication to us-west 

category reports 

Matt L - infra configuration 

daily ops thread!  

nbcu youtube walmart investigation in progress 

covergirl match rate request 

## 5/6/2024

fubo quick fix



TODO: 
Netflix, disney

covergirl match rate 

amazon liveramp integration discussion 


reporting standup


H&R block
oakley
fubo reports 

netflix campaign names are expected after todays sync meeting 

zillow - question about DSC and sharing - this is our first amazon buy side report 

follow up with Dave about zillow 
colin included in zillow work 

uber eats sustain campaign match rate


fubo fixes


## 5/7/2024

daily ops thread! 

uber mobility - should be ready for report run 
netflix - waiting on campaign mapping - may not actually be needed for this month

covergirl double check against syndicated outcomes in ava interface

zillow - Dave will make a ticket today


fubo checks

uopx checks 

zillow timing response 

fubo checks

covergirl metrics

## 5/8/2024


nbcu queries 

uber eats and teens matchable query set to Jiafu as well

oakley check interface 


uber teens - interface ready for Dave to check
fubo h&r block - interface across the line 
fubo oakly - checking interface


upcoming:  

zillow - expect a ticket today - will be waiting on NBCU data 
polestar - expect outcome grouping guidance and kickoff tomorrow 



1:1 topics
X - lighthouse and pilot cleanup 
- grace hopper?  
X - continual ad-hoc requests for match rate analysis 

TODO: 
mode report for disney mapping and review with Matt and Laura


## 5/9/2024

reporting standup: 

fubo h&r block - having trouble running 
fubo oakley - in qa

netflix - waiting on client feedback 

uber teens - Dave checking the interface
EJ checked the match rates - discussion topic for how we can broadcast these requests and results better

polestar - kickoff today 

upcoming: 
A+E - will need infra coordination 
disney - metadata is in flight! meeting tomorrow on the topic
wurl - needs a kickoff



polestar kickoff call notes: 

should we expect additional NBCU data delivery? 
Yes, additional NBCU data is expected 

## 5/10/2024

uber teens metadata pr from EJ
 
reporting standup note: 

netflix - still waiting on client
uber teens - EJ PR just merged, will need one more look from Dave
fubo H&R block - running 
fubo oakley - completed, in QA
UoPX - rerun queued with Colin 

zillow - EJ PR up in draft for review

upcoming: 
wurl 
polestar
A+E hyundai - kickoff call today 
disney - metadata mapping party today :) 

polestar match rate by outcome type request 

pip instDisney - is the expectation a category report or just brand report?  


To Be purged: 
blade
california psychics
dave and busters
halocollar
hbcgo
For Disney, it's Alison but like you said, we made those pixels before I got here so thats way longer than 90 days ago, we shouldn't have that data any longer anyway
For Bayer, James wanted me to check with Rebecca Cohen


## 5/13/2024

daily standup notes: 

zillow - moving forward without NBCU data, more metadata available this AM 
polestar - waiting for NBCU data 
A+E hyundai - data loaded on Friday - probably need some mapping updates
wurl - kick off today 
- concerns - volume and cardinality - custom branch is quite old, there is likely rework
disney - metadata access pulled - plan for alexandria mapping reviewed Friday
uber teens - data checks in flight 


retro topics
EJ uber teens, zillow

match rate notes: 

A+E hyundai checks 

liveramp export failure on file size?  

## 5/14/2024

cleanup PR 

start on amazon transcoder prep

reporting status notes: 

zillow - waiting on confirmation for nbcu data inclusion - are there syndicated occurrences? - will go ahead either way tonight 
A+E Hyundai - Dave to check interface, should be good to go
Polestar - waiting on NBCU data - should receive data today - more metadata mapping expected
uber teens - with Sebastian

upcoming: 
nbcu monjorou - tech kickoff expected shortly
disney - waiting on client 

fire drills all afternoon 

nbcu automation 

## 5/15/2024

reporting standup: 

zillow amazon data - mapping for nbcu needed - ongoing discussions on creative names
polestar - mapping for nbcu data needed 
A+E hyundai - seeking clarification on report time range 
NBCU mounjaro - will need mapping - kick off later today
wurl - kick off tomorrow 

disney - on hold for metadata availability 
netflix - report running, will handle campaign names in next report  

meetings - lots of meetings 

NBCU buy side prep 

clarification of end date behavior on the NBCU campaigns 



Suresh hand off to Alex 


## 5/16/2024

A+E hyundai - running  
polestar - metadata PR should be ready soon (TJ) 
zillow - final checks in progress (Dave) 
NBCU mounjaro - checking interface (TJ) 
wurl - kickoff today 

other - 
amazon liveramp - expect a hot PR this afternoon 
coty covergirl - expect tickets soon 

uber eats ip situation notes: 



follow up on network* with peter / edward

benadryl, had to lay down 


## 5/17/2024

uber ip meeting notes: 

resend with different column 

implement bad IP checks in pipeline 

Dave - send a bucket prefix - Hamza can backfill within a week. 

cleanup pixels PR  

standup: 

NBCU Mounjaro - in qa
zillow - in qa 
a+e hyundai - in output 
polestar - PR up for review 

upcoming: 
coty covergirl
wurl - need to update from "pilot" alex mapping to real alex mapping 
amazon - sell side xp 
paramount - xp 

Jiafu - uber ip address 

paramount notes: 

paramount identity spine 

transfer protocol 

linear - any custom metadata - campaign information 

spec for linear extended with metadata?  

Josh to share specification for that

digital - I thought we did share the requested data structure google sheet? 

convergent campaign support - probably need to talk to Edward

which cuts do they expect?  

desire is brand, linear & digital network, advertiser, categories 

Jiafu - shared taxonomy structure? 

Share expected by category 

campaign to date is the desire 
threshhold gate on our side

is this xp baseline - comp set 

linear impression minimum count?  

idfa - ipv4 is a concern, we can also explain a little bit about why it 
isn't that bad for us 

Ideal state - contact is Derek and team, send some details on what we would "like" 
two pipelines, digital and linear 

How much backfill is necessary? 



Alex: 

quick meeting 

Alex - follow up with pixel checks and DSC design 

### 


NBCU - 
buy side update in progress

buy side campaign end 

sell side & research 

check with Edward on sell side 

ITHD ticket for temporary access to 

Dave 1:1 topics
- pixel metadata
- s2s campaign name / etc mapping

Follow up with product on cleanup of naming fields

## 5/20/2024

reporting standup: 

netflix - running 

NBCU mounjaro - complete
polestar - complete
a+e hyundai - in progress 

coty covergirl - kickoff today 
disney - still waiting on metadata 

upcoming 
netflix extra mapping - needed for next report delivery 
uber backfill - expected in early June

nbcu stuff

netflix stuff

covergirl meeting 

netflix meeting notes: 

## 5/21/2024

reporting standup notes: 

coty covergirl - pairing with Matt L on NBCU data - anyone interested?  

wurl - kickoff expected shortly 
disney - still waiting on metadata 

discussion topic: NBCU ongoing campaigns 

uber and zillow 

nbcu stuff continued 

## 5/22/2024

coty covergirl - pairing with EJ this afternoon 
question about household frequency - programatic vs. direct 
netflix - mapping to alexandria follow up - Dylan 


target ongoing, virgin voyages ongoing 

amazon hyundai kick off 

1:1 notes: 
liveramp 
nbcu 

maximizing dev velocity 

Block off Dev time for myself 

zillow match rate 

amazon liveramp hotfix fire drill 


## 5/23/2024

netflix cmpds ticket create - 

liveramp fix

nbcu work 

polestar investigation 

## 5/24/2024


reporting standup

A24 civil war - waiting on data 
amazon hyundai - interface ready to check - liveramp backfill still not compelted
amazon sofi - ticket and kickoff needed
polestar - getting clarity on null publisher for syndicated occurrences Dave - match rate investigation in progress - Russell 
coty covergirl - interface ready for checks - expect to execute tonight 
netflix - report run still in progress 
zillow - reporting checks in progress 
nbcu mounjaro - completed
fubo oakley - should we run with a revised date range? 


also upcoming:
disney - metadata appears to be populated - in discovery 
wurl hardees - waiting on data 

covergirl nbcu mapping 

added test for netflix campaign mapping 







## 5/28/2024

reporting status: 

netflix - machine rebooted, Peter looking 

a+e - in review 

fubo oakley - Jiafu raised a question about some unexpected campaign names
zillow - in review 
polestar - in review
covergirl - needs re run 

upcoming - 
amazon - expecting to run early next week
wurl - expecting data soon 

## sick the rest of the day

## 5/29/2024

amazon liveramp sync 

snowflake meeting 

reporting standup notes: 

a+e usaa and stihl - kickoff planned
a+e hyundai - resolved concerns about missing placement ids - report completed 

amazon hyundai - interface is updated, waiting for campaign to finish 
- need to check the interface before starting run TJ and Dave

polestar - issues under investigation 
zillow - issues under investigation 
covergirl - issues under investigation 
fubo mens warehouse - kickoff scheduled 


upcoming: 
a24 civil war
amazon sofi 
disney - scoping 
wurl - waiting on data 

1:1 

pixel metadata conversation 

priorities 
highest urgency - performance improvement 

netflix up out of draft 

reporting standup notes: 

A+E usaa and stihl - pending scoping 
A+E hyundai - ready to go 

amazon hyundai - preparing to backfill 
amazon sofi - also impacted by backfill 

polestar - looking at match rate issues 
zillow - looking at match rate issues
covergirl - looking at match rate issues 


upcoming 
a24 civil war
wurl hardees 
disney
uber backfill - Inan and Jiafu discussion topic on private IPs

netflix check: 
4321131963
in ad impressions


## 5/31/2024

reporting standup 

zillow - expected today 
amazon hyundai - still investigating 
covergirl - still working to resolve cache refresh 


amazon duplicate events 

Colin follow up

- for "b in c" like the amazon SS - if they had any not hyundai in the amazon data, would that be included? 

## 6/3/2024

amazon backfill - do we need to re-send data retention responses?  

netflix campaigns ready :) 

A+E meeting note: 
check with Matt on the A+E always on 

A+E settling time?  

seasonal benchmarking - "lawn and garden" type stuff? 

reporting standup notes: 

netflix ready for review - may wait for additional mappings expected EOW 

amazon hyundai - model failure 
covergirl - model failure 

amazon backfill - holding off on start until all clear from internal model execution 
A+E - request for category benchmarks 
TTD A24 - should receive data this week 

polestar - match rate investigation ongoing

netflix - sent - scheduling internal meeting 
PR ready for review here: https://github.com/bigdataboxoffice/ava-aec/pull/802

amazon backfill prep

## 6/4/2024

amazon backfill prep

reporting standup notes: 

A+E usaa & stihl - should be ready to go when campaigns complete
A24 - expecting data EOW
amazon hyundai - remapping completed 
amazon sofi - need to complete backfill first, holding for hyundai rerun 
polestar - DSci working is_duplicate 

zillow - with Sebastian 
covergirl - in checks, nbcu match rate under investigation 

disney - kick off tomorrow 

fubo mens warehouse - waiting for campaign completion 
wurl - waiting on data 


## 6/5/2024

reporting standup notes: 

A+E usaa and stihl - need to filter out some test placements - should be ready to run when campaigns complete
amazon hyundai - internal run had an issue at the output step - DSci checking 
zillow - complete 
netflix - new interface should be ready today, may want to hold off on running until  
fubo - very agressive turnaround - we should run all interface checks by Friday
amazon sofi - waiting for campaign to finish and backfill to complete 
disney - kickoff this afternoon 
wurl - waiting on data - FYI pipeline is off right now
uber teens & eats - expected to run end of June - need to figure out how we are going to group by RUCA

1:1 notes: 

## 6/6/2024

paramount meeting notes: 

advertiser and brand ids and names 

"EyeQ bundle?" - attribution 
sort of aligned to "Genre" mapping maybe? 

publisher segmenting 

category breakdowns 

weekly cadence 

hourly cadence into snowflake share

5-8B rows monthly :) 

developing internal crosswalk_id that can join to any of the providers :) 

Matt L re: secure share coordination with paramount

did we capture what snowflake region they are in? 

reporting standup notes: 

amazon hyundai - delivered to MAs
coty covergirl - expected to deliver tomorrow
polestar - following covergiler
fubo - mens warehouse - campaign ongoing - need to check interface
TTD a24 - waiting on TTD
netflix - new interface is ready, DSci looking
wurl - waiting on data 
disney - PR ready: https://github.com/bigdataboxoffice/ava-aec/pull/781 hoping to start a test run tomorrow 
amazon sofi - waiting for campaign to complete
A+E stihl and usaa - need to exclude test pixels 
uber eats and mobility - early next month, Inan working backfill 

run amazon backfill prep

Dave fubo s3 checks




##6/7/2024


reporting standup: 

coty covergirl - with MAs
polestar - with MAs
amazon hyundai - internally delivered, backfill in progress 
fubo mens warehouse - checking data
TTD A24 - waiting on data
netflix - kick off yesterday, Tim Prime working on dashboard, there may be more campaign_id mapping 



upcoming: 
paramount - waiting on sample data 
wurl hardees - concern about impression counts on a test campaign - kick off next week  
disney - merged ava-aec work 
paramount - there may be two campaigns - need to check s3
disney - check counts, date ranges and model group counts against thresholds

netflix fix

disney resize warehouse


## 6/10/2024

paramount - end of month
wurl - kickoff later this week - any volunteers to lead while I'm OOO? 
disney - prioritizing wireless, hoping to restart the load with larger warehouse today
netflix - occurrences interface still not working :( - TJ debugging 

109567931

1832745554

## 6/11

disney backfill comleted

reporting standup 

fubo mens warehouse - running 
netflix - should be ready to run 
disney - mapping in progress - there are some questions about wireless mapping - maybe use capital one instead for the test run 


youtube - r2 kickoff scheduled 

amazon backfill check 

fix wurl no archive prefix 

move nbcu buy side to a different report

fubo match rate 

Inan - uber backfill 

Dylan pixel metadata help 

## 6/12/2024

A+E hyundia process review notes: 
doable / preferred / not preferred / extra 
groupings review in advance 

reporting standup: 

fubo mens warehouse - run completed
youtube - r2 report kickoff today 
ttd a24 civil war - waiting on data
netflix - run is in progress 

wurl - kickoff tomorrow Aaron to work

disney - one more PR then should be ready to run the test run against capital one

amazon sofi - expected next week
a+e stihl - expected next week

youtube paid pilot - 
just a syndicated report, some interesting categories though 

A+E always on with Matt L 

wurl handoff to Aaron 

## 6/13-16 : AFK rapid for family stuff

## 6/17

zillow prep meeting 

reporting standup notes: 

zillow - expecting metadata updates from Dave today
TTD A24 - waiting on data 
netflix - run completed 
wurl - Aaron completed interface updates, will need some follow up, unlikely to be completed today
disney - thank you Dylan for helping out - reports running or looking good
uber eats - very tight schedule over 4th of July week - Q2 report expected quickly after 
amazon tmobile and sofi - kick off today 
nbcu - 3 new reports expected after end of the month 

amazon kickoff 

campaign filtering 

match rates 

## 6/18/2024

reporting standup notes: 

zillow - waiting on metadata
TTD A24 - expecting data today
netflix - 6 hours left
wurl - PR to fix mapping 
disney - after in progress runs complete Colin will prune the cache and rerun
amazon tmobile and sofi - waiting for campaign completion
fubo qbr - kick off scheduled 
nbcu sell side - 3 reports waiting on data in the shared view

wurl interface finally ready 


mode report on "definition of done" for publisher. 

visibility into actual status of the data 

## 6/20/2024

zillow - working on interface fix 
TTD A24 - still waiting on data 
netflix - delivering to Sebastian
wurl - interface is ready to go

upcoming: 

Diana - where to output the DSci match rate metrics 

1:1 notes: 
Edward's concern - keep him in the loop
- empowered to push back on ad-hoc requests 
Jiafu what is the vision for this?  
Ask for Jiafu help - 1:1 and with Alex 

Dave: re: innovid pixel for Eli Lilly :) 

## 6/21/2024

sick

## 6/25/2024

better ish

experian people discussion 

amazon un-backfill for dates not backfilled 

short term, just make them all gross and use lighthouse_events_meta

combined outcomes and impressions 
to 
lighthouse events meta 

reporting standup notes: 

zillow - new cache built from Edwards lighthouse_events_meta interface
youtube - with Yi
TTD a24 - data is apparently in 
netflix - ready to run 
wurl hardees - with Sebastian
disney - ring remapping completed, waiting on ghostbusters info
uber eats - needs same hotfix from Edward
uber mobility - needs same hotfix from Edward
amazon tmobile and sofi - Tim has a ticket
A+E stihl - client groupings need check from Dave
polestar - need a ticket to put this in the same state as zillow hotfix from Edward

uber private IP  backfill checks - 
Tim to look 


infra kudos for Matt L and Calvin on A+E and NBCU buy side "almost" always on

## 6/26/2024

ttd delivery questions

nbcu duplicate data questions 

a24 kickoff 

reporting standup notes: 

a24 - with infra
amazon, uber, A+E, polestar - waiting on campaign completion - work enumerated in other thread

remove fubo lighthouse_events_meta 

1:1 notes 

open ticket for CMPDS - 

amazon un-backfill 

align on combined outcomes

## 6/27/2024

paramount - test data should be incoming :) 

reporting standup notes: 

polestar - need to check on NBCU counts 
A+E stihl and USAA - want to prep for these 
amazon - un-archive completed, counts verified - plan to run the 3rd
uber - confusion between agency, NBCU and uber on what data needs to be shared

share mode report with alex 

experian people stuff

## 6/28/2024

reporting standup notes: 

amazon (tmobile and sofi) 
uber (eats and teens)
uopx
polestar
covergirl
massmutual 
TTD A24 - totally busted and back to TTD for clarification/fix

## 7/1/2024



## 7/22024

  

reporting standup notes: 

amazon - interface ready waiting for tail of events 
A+E USAA and Stihl - parsed site section into special_use_1, waiting on mega-dag
UoPX - ready
uber (eats and mobility) - waiting on data 
polestar - with Sebastian 
TTD A24 - expecting re-delivery of data EOW 

disney 

## 7/3/2024

reporting standup notes: 

amazon - waiting for mega dag - should be able to give the all clear soon
A+E - also waiting for mega dag but should be ready after that
uopx - there was some confusion about outcomes and it requires a rerun 
uber eats/mobility - we need to verify mappings and data from NBCU.  Dave to get metadata updates ready today.  Targetting 7/5 kickoff
fubo - hoping to kick off lux-auto today - interface checks expected today

upcoming
NBCU sell side - checking mapping today 
covergirl - Dave working metadata, may be included today, no rush 

a bunch of ops stuff


## 7/4/2024

## 7/5/2024

reporting standup notes

amazon sofi - needs rerun
amazon tmobile, A+E still, uopx - complete
Uber eats - ongoing discussions on metadata and how to handle programmatic vs. direct
uber mobility - want to move to common interface
disney - reports ready


R2: 
youtube needs a new group label 

uber eats and mobility fire drill


## 7/8/2024

eli lilly ttd deployment

netflix confusion needs resolution 


reporting standup notes: 

uber eats - ready for reporting
amazon - ready for reporting
uber teens - ready for reporting
A+E stihl - ready for reporting 
uopx - complete
polestar - with MAs
fubo - lux auto looks good - should be ready to run the remaining categories
coty covergirl - waiting for guidance on mapping 
NBCU ring - need to run mapping check
NBCU ultomiris - need to run mapping check
A+E USAA - should be ready to go
TTD A24 - need mapping from ids to names from A24 - need to refactor manifest for new schema

netflix - kickoff later today

## 7/9/2024

reporting standup notes

youtube - completed
disney - completed
uber eats, amazon tmobile and sofi, A+E stihl - with MAs
uber mobility - in reporting 
polestar - completed
fubo - failed overnight
covergirl - waiting on client response
massmutual - requires metadata mapping update before running
nbcu ring and ultomiris - need to check mapping 
nbcu kohls - waiting on data 
A+E usaa - shoudl be ready to run 

ttd a24 - metadata seeds will need to come from a24 now

## 7/10/2024

ttd a24 continued

1:1 notes - 

uber eats - discussing breakout of programmatic vs. direct

amazon - delivered
A+E stihl - delivered
uber teens - in reporting
uopx - delivered
polestar - delivered
fubo - cache update issues 
nbcu ring and ultomiris - running 
covergirl - waiting on metadata
mass mutual - waiting on metadata
A+E usaa - ready to run 
netflix - campaign overrides completed


TODO: 

domain mapping case sensitivity 

1:1 notes - 

how can we get ops work into maintenance / sustain mode?  

options - 

sketch out shared vision and execution - 
- enabled / driving ops improvements 
- tactical action items 



add filter for impression count

## 7/11/2024

uber eats - in reporting 
amazon - with MAs
A+E stihl - with MAs
UoPX - with MAs
polestar - wtih MAs
fubo - running, lots of failures
covergirl - waiting on mapping
mass mutual - mapping in progress ETA 7/12
nbcu - ring and ultomiris completed in QA 
nbcu kohls - waiting on data
A+E usaa - intrface signed off
TTD A24 - waiting on mappings 
netflix - started runs today 



disney deletion - 

## 7/12/2024

ttd a24 - blocked on client metadata
nbcu kohls - infra to copy over data 

## 7/15/2024

nbcu kohls mapping 

reporting standup notes: 

ttd a24 - still waiting on metadata 
nbcu kohls - need to map the campaigns 
mass mutual - metadata mapping completed and models run over the weekend 
covergirl - waiting on agency to resolve metadata mapping 
zillow - campaign should complete today, will need metadata mapping updates

## 7/16/2024

covergirl - ready to run 
nbcu kohls - ready to run 
zillow - running some checks and Dave needs to complete the metadata mapping updates
TTD A24 - still waiting on metadata from the client

ops high ROI work scoped and tickets created

- thinking bigger for ops
- design for fully automated system


paramount

## 7/17/2024

reporting standup - 

coty covergirl - cache failure
nbcu kohls - running 
zillow - metadata mapping expected today - double checking interface for amazon orders
ttd a24 - still waiting on client for mappings
paramount r2 reports - waiting on data 

check with Yi on snowflake query failure. 

snowflake query failures and ticket opened

AVA-3002 review AC and talk to Jiafu

## 7/18/2024

3002 questions
- rather than from report spec input, use fields in mode? 



reporting standup 


coty - running
zillow - running
paramount - data has arrived, new schema and new prefix pattern 
- Dave asking for clarification on mapping 
nbcu disney parks - infra to copy data 

DQ comp check for disney parks

nbcu separate channel test for optum system 

## 7/19/2024

mass mutual - negative lift observed
zillow - Colin has seen an issue with counts in the cache - investigating 
paramount - waiting on client response
disney R2 reports - Yi planning to run
nbcu disney parks - campaign data loaded 
disney acolyte request - still scoping this 

paramount redelivery - 

## 7/22/2024

zillow - investigating issue with occurrence count in cache
paramount - need to clean up s3 delivery 
nbcu disney parks - Dave verifying interface
paramount - initial look at share of "always on" 
disney r2 - sounds like we may want to do some initial verification on counts for the category groups

zillow amazon impression count debug 

sick in the afternoon

## 7/23/2024

late start 



TODO: ttd a24 extract metadata from previous drop

nbcu disney parks - mapping in flight 
paramount - expected today 
disney synchrony credit care - looking 
ttd a24 - need to extract metadata from earlier delivery for mapping 

disney mapping mode dashboard

paramount s3 delivery PR 

## 7/24/2024

late start

reporting standup notes: 

paramount - 3 reports Yi noted failure at model output - we do not have contiguous data over full date range - investigating 
ttd a24 - will map metadata from earlier delivery
disney synchrony credit care - mapping complete - no spec sheet or JIRA 
polestar - 
paramount loreal - need to understand what brand this is then we will map




paramount notes:
invalid persistent id diagnostic flag
identity resolution pattern 


## 7/25/2024

paramount meeting notes: 

timestamp is when server recieves the impression, not when it is served

unity_advertising_id null - expected in follow up

expected lag 

15 days (2 weeks)

request - exclude CBS 
- cable linear - without daypart - just with virtual 

ian & amilia follow up with questions 

Follow up with Laura on paramount mapping 

dylan RE: 2879

## 7/26/2024

paramount biktarvy - model group incorrect? 
paramount descovy & plan b - ready for MA
polestar - waiting on metadata 
paramount loreal - ready to run 

adobe vs. photoshop for netflix: 
domain mapping is to adobe.com so we keep the brand as adobe
will revisit with subdomain support 

before run 

buy side
sell side

delivery_type 

outcomes r3 / r4 

## 7/29/2024

A+E
amazon
disney
nbcu
netflix
ttd_a24
uber
univision
wurl
tubi
fubo


reporting standup 

paramount - 
a+e hyundai - should be ready 
polestar - more nbcu data incoming 
nbcu carls golfland - minor comp update expected today  
uber eats dominos - rerun the report output with custom group labels

amazon bmw - its unclear what the requested report date range is

upcoming
eli lilly - expect a request for end of July reports

wurl notes: emotion segments + genre segments

virgin voyages - good
uopx - good
univision - skipping - very low priority 
uber - combined interface for mobility and eats

ttd a24 (and ttd lionsgate if that shows up again) - concerns about the metadata but 
taxact - good
target multi pixel campaign situation 
polestar - good
paramount - good
pandora - good
oldnavy - ttd concerns 
netflix - good
nbcu - concern - the "xp" or pause ad delivery
massmutual - outcomes mapping 
disney - good
a+e placement filtering for test placements
fubo - site and campaign filters - custom labels
lionsgate - I'm a little concerned about the next delivery if it isn't a pixel and its TTD

## 7/30/2024

Dylan branch started review.  

reporting standup 

disney - need to check publishers and be very aware of the upcoming data schema / infrastructure pipeline changes. 
paramount loreal - Yi monitoring 
TTD A24 - Dave to check with rep on any updates to mapping 
A+E hyundai - ready to run, there are some placements with zero matches 
polestar - waiting on nbcu data 
uber eats dominoes - report output rerun 
carls golfland - spec sheet needs some clarification 
Sebastian highlighted some gaps in the spike based analysis 
amazon bmw - waiting for data to settle after reporting period ends tomorrow

## 7/31/2024

reporting standup: 

polestar - nbcu reference data needs update - expected to be ready tomorrow
ttd a24 - still waiting for mapping 
fubo puma - running 
amazon bmw - waiting for data settling 
uber eats dominos - custom group labels ready for reporting 
disney rerun with disney+ data - waiting for client feedback
nbcu carls golf land - ready to run 



nbcu disney parks - in reporting 
paramount - in reporting 
disney creditcare - in reporting 

big picture stuff - 

ops workflow stuff - 


TODO: 
operations automation - collaborate with Edward, Jiafu, Josh and probably Alex

report spec v2 actual specification

1:1 notes - 
paramount to EDO data feed 

## 8/1/2024

transaction record id - freewheel documentaiton 

not changing category mapping on the paramount side

have we talked them through the index stuff for engagement rate? 

amazon date range analysis 

disney - rerun with disney+ waiting on client 
amazon bmw - waiting for data to settle will need one more campaign mapped
nbcu carls golfland - in modeling 
polestar - waiting on mega dag 

paramount update!  

49341985

## 8/2/2024

amazon bmw - waiting on client feedback - unexpected end date
ttd a24 - waiting on metadata mappings from client 
polestar - output complete
disney reruns - new disney interface expected to start next week
netflix - any new campaign overrides for july? 

sql returned is a base query 


## 8/5/2024

reporting standup notes: 

ttd a24 - waiting on client to provide site mapping
disney rerun - working through publisher mapping 
amazon bmw - campaign ended 7/8 question to client
massmutual - waiting on nbcu data 
netflix - waiting on client communication for any new campaign_id override requests

upcoming - 
eli lilly - waiting on ticket

## 8/6/2024

amazon bmw - ready to run 
mass mutual - working with infra to figure out buy side situation 
fubo celcius pause ads - working 
TTD a24 - still waiting on client
paramount loreal la roche posay - remap and rerun 
netflix - waiting on campaign_id overrides and requested brands for threshold checks

paramount request for feed changes
fubotv ad_type mapping

PR review for silver / gold

## 8/7/2024

reporting standup 

netflix - waiting on campaign details from client 
ttd a24 - client working site mapping
disney - rerun with disney plus has open questions 
fubo celcius - mapping ready - interface ready for checks - ad_type_name 
amazon bmw - in modeling 
mass mutual - need to check interface should be able to start today 

1:1 notes

pull request review for silver / gold 

## 8/8/2024

reporting standup notes: 

ttd a24 - still waiting on mappings 
disney credit care - rerun but re check the category mapping first
disney rerun with disney plus - publisher mapping question with client 
fubo celsius - pause ad match rate investigation 
wurl hardees - request for report with publisher breakout 
paramount loreal la roche posay - model failures under investigation 
mass mutual - model failures under investitation 
netflix - waiting on campaign details from client 

paramount mapping - did Dylan rebuild bronze from raw after 8/1? 
rerun of insert overwrite 

1:1 notes - 

paramount 

always on ops vision 


more cleanup expected on this doc tomorrow 

## 8/9/2024

reporting standup

discussion topic 
python version 

reviewing silver and gold

A+E silver 
edo_ip_id 
7707189066
and from bronze
7707189066
transaction_id match check good

fubo 
special use for "is olympics" boolean 

amazon
- event_id created at liveramp bronze layer

covergirl
-     where site_id not in ('8725551', '8767753', '8682897')
and campaign_id is distinct from '31561373'

disney - 
wait for new interface

nbcu -
check 176434
191581
191582
195095
195096
195097
195098
72345254

77064121
78816875

campaign_ids 

netflix

clean advertiser name

## 8/12/2024

disney rerun with disney+ - discussing campaign filtering
fubo celsius - concern about low volumes and match rate for pause ads
fubo olympics - discussing with client 
nbcu BoA - need to get mapping merged and check interface
nbcu questions about dominos and mounjaro under investigation
https://github.com/bigdataboxoffice/ava-aec/pull/1023/files

tubi cleanup 

## 8/13/2024

reporting standup notes: 

TTD A24 - waiting on client metadata
paramount la roche posay - cache failure
fubo celsius - CDN ips from springserve - would require re-delivery / backfill
nbcu BoA - should be ready for tomorrow 
disney rerun for disney + - should be ready today
netflix - running 
eli lilly - innovid and mapping questions 

disney filter

eli lilly start 

nbcu boa 

paramount meeting notes: 

concern about brand_id / advertiser_id as join key 

unity mappings are coming in pretty disjointed 

should be flowing but it isn't 

updtae from Edward an plan for orchestrator

## 8/14/2024

TTD A24 - sounds like we got mapping 
paramount la roche posay - cache issues
nbcu boa - should be ready today
disney rerun with disney+ - network name no longer available needs refactoring 
eli lilly - need to create interface and complete mapping 


37,384,093,869

1:1 notes

insert overwrite new paramount data 

eli lilly stuff 

disney join to metadata situation 

## 8/15/2024

experian refactor from Dylan review

disney 

ttd a24

paramount meeting notes: 

eye q bundle - when do we start to group by this? 


reporting standup notes: 

ttd a24 - mapping PRs in flight
fubo celcius - may have resolution to match rate issue, investigating 
nbcu boa - PR should be incoming with mapping today 
eli lilly - interface is in progress - nbcu data may be available today 

upcoming
nbcu sell side olympics - data may be incoming today 
fubo olympics - 
eli lilly olympics - 

alerts for publisher activity 

eli lilly mapping 
ttd a24 mapping 

## reporting standup 

TTD A24 - mapping updated waiting on date range confirmation 
fubo celcius - unblocked with auto refreshed interface - needs custom branch
disney disney+ rerun - a little more mapping required
eli lilly - mapping in progress interface in progress 
nbcu olympics sell side - need to copy sell side and map

upcoming 
canvas mgm - expected next week
eli lilly olympics - expected soon 

## 8/19/2024

ttd a24 - at model output
fubo celsius - waiting on date range - will require auto refresh interface
disney rerun with disney+ - running
netflix - expected to complete tomorrow
eli lilly - working through metadata mapping 

upcoming 
nbcu olympics sell side - copy completed, mapping will need to be completed
canvas mgm - expecting data soon 
eli lilly olympics - need details 

## 8/20/2024


fubo celsius - placement missing from auto refreshed interface 
disney rerun - need to wait for runs in progress to complete before restarting other reruns 
eli lilly - custom maping in progress 
nbcu olympics - mapping in flight 

upcoming - 
canvas mgm - expecting data soon 
eli lilly olympics - waiting on details 

disney refactor

eli lilly special use mapping 

## 8/21/2024

reporting standup notes: 

ttd a24 - still running 
fubo celsius - in modeling 
disney rerun with disney+ - waiting for reports to finish before restarting reruns
eli lilly - may have resource contention concerns 
fubo olympics - may have resource contention concerns 
DQ - concern about beer category size (similar to skin care concerns) 
nbcu olympics - target visa and geico are ready to run - there are resource contention concerns 

notes for pairing with Alex and Josh

- ipv4 new addresses and ipv6 addresses 
- is_usable_record and unusable_record_reasons 
- is_latest_production_ir vintage




1:1 notes - 

dimensionality - 
is_private_ipv4

current plan for panel linkage 

goal - we want to avoid republishing results 
- if we are to move to the panel linkage we 

panel linkage - we should have by sept 30th
- if its really too much we dont have to include it 

## 8/22/2024

check on first date of digital delivery 

~ 24 hours / 3-4 days on linear settle time 

reporting standup 

fubo celcius - still investigating match rate 
disney rerun with disney+ - reruns in progress 
eli lilly verzenio - in progress
fubo olympics - interface created mapping should be complete
nbcu olympics round 1 - in progress
mass mutual - waiting for reporting period end

sync on data delivery mechinism with Edward

## 8/23/2024

reporting standup notes

disney reruns - looking good
nbcu olympics - continuing to run 

## 8/26/2024

reporting standup 

TTD A24 - questions about model group 
nbcu olympics round 2 - in report creation 
fubo olympics - model convergence failure 

upcoming
lionsgate ttd borderlands - expecting data this week 
canvas mgm - expecting data this week 
eli lilly olympics - expecting data this week 
uber olympics - nbcu data expected

disney rework meeting notes: 

updated to single archive table 

## 8/27/2024

discussion topics: new vintage release process 
Do we review the householding with each release? 

reporting standup notes: 

TTD A24 - running - checking cache
fubo olympics - final two industry groups in progress

upcoming
mass mutual - waiting for reporting period to end
eli lilly - eli lilly (masterbrand) - want to check model groups
eli lilly olympics - needs discovery and innovid log delivery 

content_genre - should that be a list in ava? 

lighthouse join to old inscape spine :O

ops for mass mutual and eli lilly 

## 8/28/2024

ttd a24 - done
fubo olympics - still running
nbcu olympics round 2 - finishing up
msft copilot mapping is still confusing


upcoming 
mass mutual - waiting for reporting period end time
eli lilly masterbrand / alz_dse - also expecting nbcu data 
eli lilly olympics - needs discovery 
eli lilly verzenio - needs discovery and innovid log delivery 
polestar - buy side nbcu data ready to check 
lionsgate borderlands - ttd data delivery requires new interface
mgm challengers - expecting data from innovid
amazon - need details 

disney rework 

quick check on lionsgate ttd delivery 

## 8/29/2024

reporting standup

mass mutual - waiting for reporting period to end 
lionsgate ttd - data delivered without ip 
mgm challengers - waiting on data 
eli lilly verzenio - ticket for nbcu data opened
eli lilly masterbrand + alz_dse - discussing alz_dse mapping 
eli lilly olympics - waiting on innovid data 
polestar - waiting on reporting period to end 
uber olympics - ? 

polestar eli lilly nbcu data 



1:1 notes

what is next for the orchestrator

spike based recruiting - 
resume reviews
coderbyte - manual review submission 

## 8/30/2024

reporting standup 

mass mutual - waiting for reporting period to end
eli lilly - still coordinating alz_dse mapping 
lionsgate - still waiting on TTD data 
eli lilly verzenio - more nbcu mapping in flight
mgm challengers - waiting on innovid data 
eli lilly olympics - waiting on data 
uber olympics - mapping questions still open

inscape redelivery investigation 

1977072135

1974964406


## 9/3/2024

inscape bulk delete plan 

reporting statndup notes: 

mass mutual - interface checks and mappings 
polestar - interface checks and mappings 
nbcu maybeline - checking interface and mapping 
uber olympics - mapping checks 
lionsgate - with TTD
mgm challengers - need innovid data 
eli lilly - alz_dse ready to run 
eli lilly olympics - discussing group labels for agency breakout 

Compile thoughts on paramount approach 

## 9/4/2024

no step function 
put it all in a dag 

reporting standup notes: 

netflix - list of campaigns delivered
paramount non-lux auto - reports generated
A+E hyundai - with sebastian 
mass mutual - waiting on client 
lionsgate - waiting on ttd 
mgm - waiting on innovid
eli lilly verzenio - waiting on olympics data 
eli lilly masterbrand - waiting on nbcu data 
eli lilly olympics - waiting on innovid logs 
uber olympics - running 
polestar - ready for checks
nbcu maybeline - checking interface 

## 9/5/2024

inview_advertiser_id 

paramount notes 

there are no persistent identifiers
enumerate implications of this approach 

update issue is being worked

reporting standup notes: 

paramount ao non-lux auto sample - rerunning model output 
mass mutual - Colin observed a failure 
netflix - waiting on campaigns
lionsgate - waiting on ttd 
mgm challengers - waiting on innovid
eli lilly - getting clarity on scoping 
eli lilly olympics - waiting on data 
a+e multi brand report with fast breakout - need details 

Jack Ni interview 


##9/6/2024

netflix - still waiting on campaigns
A+E hyundai - 

mass mutual - running 
netflix - still waiting on campaigns
eli lilly - considering which cmpds release to use for group labels and filters 
eli lilly olympics - waiting on data 

upcoming 
nbcu sell side for olympics - ending 9/8 

## 9/9/2024

reporting standup notes

nbcu olympics - waiting for data to settle 
netflix - updated campaign mapping in flight 
lionsgate - waiting on TTD
mgm - waiting on innovid
eli lilly - waiting on olympics data, working through options 

eli lilly 

mapping netflix 

## 9/10/2024

netflix - running 
lionsgate - expecting data this week 
mgm challengers - waiting on innovid data 
eli lilly - updated interface delivered yesterday 
eli lilly olympics - waiting on data 

ppsm

local advertiser stuff 

## 9/11/2024

ppsm continued 

reporting standup notes: 

liongate ttd - waiting on data, got permission 
mgm challengers - waiting on data 
eli lilly olympics - meeting this afternoon, prefer to run with complete data 
nbcu olympics - question outstanding about time range, waiting on tickets





1:1 notes
How to get the actual model_group
measurement start and end - where to get that?
how much error handling is needed?  
How are products / category reports handled?  
What is status for each step and how should we store it? 
 - i.e. one brand failed.... 
Is that a failure at the top level? 
Spike failed because of start/end date?  
How can we get start/end for spike? 



## 9/12/2024

reporting ops status

eli lilly olympics - still waiting on clarity and data 
eli lilly verzenio - ?
eli lilly alz_dse - ? 
lionsgate TTD - TTD transmitted last night 
mgm challengers - still waiting on data from innovid
kargo - need to review 
nbcu olympics sell side - waiting on date range details and mapping details 
paramount ao - waiting on delivery with new mappings 

1:1 notes

ppsm
not particularly interested in granular invocation 
alert / alarm - just fail hard 


overall orchestration 
batch granularity delivery_date, model_group, measurement_start_time, measurement_end_time 


ops 

ops support system 

paramount status 

cleanup on ppsm 

recruiting updates? 

1:1 cadence - am I missing something?  
expectations not being met? 

EJ and Inan are now available too for ops 

ppsm ready 

## 9/13/2024

lionsgate ttd - still waiting on ip
mgm challengers - still waiting on data 
netflix - running 
eli lilly - PR up for review 
nbcu sell side olympics - infra complete, need details on comcast mapping 

## 9/16/2024

lionsgate ttd - data is available with IP :) 
mgm - still waiting on data 
eli lilly - in progress 
nbcu olympics - comcast mapping questions open but other campaigns should be ready to run 
coty covergirl - should be ready to run 
kargo - data was delivered Friday - pair with Dave

paramount refresh 

## 9/17/2023

reporting standup 

lionsgate ttd - Inan working 
mgm challengers - still waiting for innovid
eli lilly - still working through mapping confusion 
nbcu paralympics not comcast - should be able to run today - outstanding question about duplicates to nbcu 

upcoming 
amazon - waiting for reporting periods to end
nbcu paralympics - still need clarity on comcast mapping 
coty covergirl - mapping in progress today 

paramount ao - full refresh completed yesterday - need to enumerate interface checks

## 9/18/2024

Sick day 

## 9/10/2024

disney back on 

paramount - after all clear one more full refresh then 

reporting standup notes 

eli lilly - search terms update - custom group labels discussion 
nbcu olympics - comcast mapping corrections in flight - discussion about time ranges for syndicated in process
coty covergirl - mapping in flight 

upcoming: 
uopx
polestar 
amazon multiple 
massmutual quarterly 

## 9/20/2024

41091599465 paramount rows inserted 

35908833334 before paramount count 

disney refresh completed 

1:1 topics - 
general status - are things OK? 
granulatrity for paramount pipeline timing?  
eli lilly retrospective 
orchestrator 
ppsm 

reporting standup: 

eli lilly - running 
nbcu olympics - waiting on 0.7 release 
covergirl - mapping completed ready to run 

Disney deletion 

upcoming: 
uopx
polestar
kargo - EJ working 
lionsgate ttd - Inan PR up 
 
Seth will take PPSM execution for immediate delviery

paramount refresh continued 

## 9/23/2024

disney check - duplicates detected 

lionsgate TTD - PR is up
mgm - waiting on data 
eli lilly - libri mapping question 
nbcu - running some had errors though 
amazon - waiting for campaign end 

upcoming - 
uopx 
mass mutual 
kargo 


396252116

41091599465

41487851581

export fixes 



## 9/24/2024

Open enroll in healthcare 

canvas MGM s3 integration 


reporting ops 

lionsgate ttd - PR up for review 
eli lilly - libri report ready to run 
nbcu paralympics - mostly ready

upcoming - 
covergirl
uopx
polestar
massmutual
kargo 
amazon TNF 

vv match rate pairing 

## 9/25/2024

reporting ops 

netflix - discussion 
lionsgate borderlands ttd - PR up for review 
mgm challengers - delivered to mgm - with infra
eli lilly lebri - occurrences not in cache - under investigation - AVA to check interface
nbcu paralympics - questions about priority for DSci 
amazon tnf - metadata mapping question open 

upcoming 
uopx 
polestar
covergirl 
kargo 
nbcu other paralympics 

paramount ao crosswalk hh coersion 

ops check for paramount 

through 9/16

through 9/23 instead 

kick paramount mapping updates 



disney remove unique key requirement

amazon metadata check 

netflix redelivery coordination 

eli lilly retro 

possible next steps for subdomain / path mapping? 


## 9/26/2024

paramount meeting notes: 

item - unity agency name only appearing on recent records
- maybe the join to "earliest valid" is not capturing agency?  
This may cause complications 
Swathi will check
map without agency for now and still plan to map with agency and group and report on it later

crosswalk_hh type on paramount s2s_impressions 

check paramount through 9/23 

colin re: eli lilly lebri situation 

1:1 

when things get heated or escalate - Edward volunteers 

alex 1:1 
- 

PL-1 - US HHs
PL-2 - US HHs w/ crosswalk_hh (inscape panel) 
PL-3 - disqo and mfour panels intersection with inscape 

problem statement = cmpds main for paramount ao 
PL-3 is 1/10k - number of PL-2
- we expect this to be much better 
brand 18662 

## 9/27/2024


reporting standup 

paramount att question - left join to att with multiple mappings should be OK 
lionsgate ttd - hoping for publisher mappings from client 
mgm canvas - innovid delivery in s3 tickets expected shortly 
eli lilly lebri - still needs investigation 

amazon - do we need 7 days for outcomes to resolve? category propensity requires it
- product requirement < 7 days , but technical 
- ava to engage in amazon checks immediately 
nbcu paralympics - coca-cola still running  
amazon TNF - expected to run tomorrow for through 21st 
other eli lilly - these should be s4

upcoming: 
covergirl
uopx
polestar
kargo American Airlines - EJ has a PR up 
kargo optune gio - will need a ticket for 
disney - full refresh in progress 
mass mutual - 9/30 
NBCU sell side - lexus should be ready to copy, others waiting for 9/30 campaign end time 

fubotv - refresh after linkage is refershed 

kargo 
mgm challengers 
lionsgate ttd - site mapping and creative durations 

## 9/30/2024

reporting standup notes: 

lionsgate ttd - waiting for site mapping 
mgm - waiting on data 
eli lilly - lebri 1p Colin investigating 
amazon genesis and expedia - custom grouping request - maybe it can be done in reporting? 
nbcu paralympics - ready for reporting 
covergirl - should be ready to run tomorrow 
uopx - should be ready to run tomorrow 
polestar - are there more NBCU campaigns? 
amazon tnf - initial round of reports ready for Sebastian 
eli lilly - Dave checking metadata mapping 
kargo - EJ has a PR up 
nbcu lexus - may need mapping work 

## 10/1/2024

reporting standup notes: 

nbcu toyota - under investigation by Colin 
eli lilly lebri - product does not appear in taxonomy, Colin investigating workaround 
eli lilly verzenio - low match rate under investigation 


nbcu lexus - need to follow up on mapping 
disney adobe and jack daniels - need to follow up on mapping
coty covergirl
uopx
polestar
mass mutual 
amazon - state farm draftkings and fanduel - needs mapping 
nbcu state farm and xfinity - mapping in progress and infra copy needed today 

upcoming 
kargo - EJ working (american airlines and optune gio)  
mgm challengers - data should be available now 

fubo pr

planning / grooming 

netflix backfill 

## 10/2/2024

netflix stuff

ttd site mapping 

lionsgate borderlands investigation 

reporting status: 

uopx - will need amazon integration 
covergirl, polestar, massumutual, eli lilly - should be ready to run 
disney - investigating observed difference in impressions 
lionsgate ttd - one campaign is missing IP address - in discussion 
mgm challengers - data delivered yesterday, should re-review after looking at actual schema of delivery 
amazon - custom mapping will be required, ticket to be opened
eli lilly debugging - verzenio match rate analysis - group to huddle to review match rate in cache 




netflix backfill 
uopx amazon 

type fix for all interfaces


## 10/3/2024

eli lilly verzenio - cache rebuild was successful 
uopx - amazon data availability should be resolved today 
mass mutual - running 
polestar - nbcu contract resolved, unclear if we are waiting for this, Dave working mapping 
eli lilly new round of reports - mapping is good - custom mapping post-model - there are still domain mapping questions 
disney jack daniels - ready 
disney adobe - Dave to check interface 
nbcu xfinity and statefarm - Dave to check interface
amazon - expecting resolution of interface data availability today 
kargo - PR is up, needs mapping work 
netflix - backfill needs coordination 
lionsgate - comp mapping needs completion - Dave to check interface 
mgm challengers - need to create interface 

amazon fix in flight 

bulk actions move filtered to coderbyte 

after assessment-qualified then thumbs up 

validation / automation / processes is higher priority 

## 10/4/2024

reporting standup 

mass mutual - DSci investigating 
disney jack daniels - ready to run  
disney adobe - running 
polestar - ready to run 
nbcu xfinity - 
nbcu statefarm - 
uopx - Dave to check interface 
netflix - with client to get clarity on programatic backfill 
eli lilly - models are running 
lionsgate borderlands - ready to run 

omni dashboard scoping 

## 10/7/2024

mgm canvas continued 

eli lilly verzenio - missing nbcu data? 
nbcu xfinity - ready to run 
nbcu statefarm - ready to run 
amazon genesis - ready to run 
amazon expedia - ready to run 
mgm challengers - PR should be up today for review TJ 
kargo - EJ has a PR up - aiming for model run kickoff this week 

netflix - clarity required from client on backfill needed before running 

where are we at with this assessment 

what is pass fail

procedural details coordination 

## 10/8/2024

fubo will require refactoring in remapping for genre 

nbcu incrementalilty 

eli lilly - the struggle continues 
covergirl - at reporting 
mass mutual - running 
lionsgate borderlands - at reporting 
disney jack daniels - at reporting  
nbcu lexy - at reporting 
mgm challengers - need to check the status of comp mapping 
kargo - mapping work is needed - EJ has a pr up - question about added columns needs resolution from Dave/Client 
fubo genre and el/sl - needs scoping 
nbcu A/B testing - needs scoping 

tiffany finish review coderbyte

pre-modeling data walkthrough 

pair with EJ on kargo 



## 10/9/2024

mgm pr real quick 

reporting standup notes: 

eli lilly - the saga continues 
disney jack daniels - issues identified
nbcu lexus - issues identified 
nbcu statefarm - running 
amazon expedia - running 
covergirl - issues identified 
disney adobe - running 
kargo - alaska airlines ok, optune gio clarification from client required - PR in progress 
mgm challengers - Dave to check interface, should be ready 
netflix - need to check and coordinate backfill data - waiting on campaign details 
turbotax - 
uber eats - checking data for readiness 


upcoming: 
fubo genre and el/sl - needs scoping
nbcu A/B testing - needs scoping and discussion with DSci and reporting 

additional mgm challengers work 

couple of candidate reviews 


keep EJ engaged - OPs his is primary right now 

rapid response team 


just make a kargo ticket for REP board and get feedback 

touch base with Jiafu on cross functional vision for AEC reporting ops 

- thats the path forward.  

draft template definition of done  

Ryan C and recruiting 

justworks harassment training 

## 10/10/2024

mostly driving 


## 10/11/2024

mostly checking up on ops stuff and checking on EJ 

## 10/14/2024

uber placement filtering 

kargo 

reporting standup notes: 

fubo celcius - ready to run 
A+E hyundai - Brett reviewing grouping 
nbcu "campaign incrementality" test - reviewing 
uber teen - Dave asking client about outcome data 
uber eats - Dave checking interface 
turbotax - scenario 1 work has not started - Dave to open a ticket 
kargo - EJ working 
netflix - september runs in progress - backfill to start as soon as possible 
disney adobe - debugging, model has been running for a very long time 

## 10/15/2024

netflix backfill questions 

turbotax 

kargo needs to merge 

reporting standup notes:
netflix - running, backfill questions to client before actual backfill starts
uber eats - running 
disney adobe - revised grouping and rerunning now 
turbotax - scenario 1 need to start creating interface 
kargo - EJ can this start today and can you please broadcast status in r2-r3-r4 discussion channel? 
uber teen - data availability should be resolved, need to check status of load 
A+E hyundai - running 

uber teen 

couple of interviews 

turbotax 

## 10/16/2024

PR reviews

coderbyte reviews 


reporting standup notes

netflix - running Ryan monitoring 
uber eats - run failed - DSci investigating
disney adobe - running DSci investigating 

turbotax - PR ready for review 
kargo - question about filtering and null campaigns 
uber teen - outcomes delivered and checking volumes 
nbcu campaign incrementality - ? 
nbcu xp reports - ? 
fubo qbr - category mapping for DQ 

upcoming / scoping 
fubo EL/SL - waiting on client 
amazon mid-season TNF - scoping 
disney end-october - scoping 
uber reserve / uber one - scoping 

uopx metadata mapping question from Sebastian - pre-model vs. post-model grouping 

PPSM - orchestrator 

## 10/17/2024

quick uber mapping pr 

recruiting notes: 

paramount sync notes: 

reporting standup notes 

fubo celcius - in reporting 
eli lilly - request with Sebastian 
mgm challengers - in reporting 

netflix - running 
uber eats - running - DSci debugging 
disney adobe - DSci has a quick fix to try 

turbotax - PR merged, metadata mapping needed from Dave 
kargo - client needs some filtering - should be ready today 
fubo qbr - category mapping question is open Dave to look 
uber teens - outcomes were delivered, mapping in flight - coordination meeting this afternoon 

uopx - placement mapping update with Dave 

nbcu toyota - already done 

interview Oj 

## 10/18/2024

turbotax filtering 

reporting standup notes: 


disney adobe - in report output 
uber eats - reviewing report spec r4 unexpected outcomes
- need to check if campaigns are mapped to both teens and eats 

turbotax - maybe today, definitely by Monday 
uber teens - in qa with Dave
kargo optune gio - failed to converge 
kargo alaska airlines - run completed 
nbcu toyota - already completed 

uber fire drill 

turbotax filtering 

Think about people management 


## 10/21/2024

eli lilly - 
netflix - running 
uber eats - dominos running 
kargo optune gio - colin checking, need to check cache for dummy syndicated mapping 
turbotax - final interface checks should be able to run today
fubo - need to check categories

turbotax 

## 10/22/2024

reporting standup 
uber eats - looking good
nbcu toyota - waiting on spike report 
kargo optune gio - requires a cmpds change - holding 
netflix - running 
turbotax - run complete 
fubo - discussing brands and categories for wireless (verizon) 

dummy inscape event for optune gio 
A+E analysis for site_section_name 


## 10/23/2024

Tiffany interview 

roadmap review 

debrief Tiffany 




PPSM next steps - Staging is working 

## 10/24/2024

reporting standup 

uber teens - ready for reporting 
kargo alaska airlines - in output 
turbotax - in debugging 
kargo optune gio - started run but hit a failure, in debugging 
fubo - running 
uber eats - waiting on mega-dag to complete execution and will verify counts with uber before kicking off with new outcomes

upcoming: 
paramount biktarvy - waiting on data? 
mass mutual - waiting for reporting period to end - will need to update metadata and check on NBCU campaigns

data clean room maybe Aaron leads 

cleanroom notes: 
host spine
do matching 



1:1 notes - 

AC and specs for orchestration 

## 10/25/2024

some coderbyte reviews 

infra experiment for ppsm open 

reporting standup notes: 

uber teens - with MA
kargo alaska airlines - with MA 
netflix - in reporting 

kargo optune gio - ready to kick off 
fubo - debugging and re-running output runs 
uber eats - ready to run 
paramount biktarvy - will confirm schema for legacy data delivery 
nbcu fasenra - will need to copy over sell side data 
turbotax - will need to extend filtering 
mass mutual - waiting for reporting period to end

## 10/28/2024


kargo optune gio - in reporting 
netflix Sept - waiting for spike
uber eats - in reporting and prioritized for Sebastian
fubo category report - running 
turbotax - expected to be ready today - Ryan
NBCU fasenra - will need mapping 

upcoming 
paramount biktarvy - waiting on s3 delivery 
mass mutual - waiting for reporting period to end 
netflix october - need backfill details for programmatic if we are going to do that before the next run
eli lilly - waiting on details 
polestar - check on threshold
amazon TNF - waiting on details 
disney - waiting on details 

paramount - 

interview Iggee 

fubo count check

discussion topics
- PPSM setup? 

fubo check 

## 10/29/2024

ops updates 

recruiting sync 

reporting ops: 

kargo optune gio - report with MA 
uber eats - ready for reporting 
turbotax - verifying output runs with filtering 

nbcu fasenra - checking interface, mapping complete 
paramount biktarvy - waiting on data 

upcoming: 
mass mutual - waiting for report period to end
amazon mid season TNF - spec sheet in review, questions about paramount + need resolution 
disney gemini - requires subdomain mapping can we commit to be ready 1/1/2025 to run this? 
eli lilly - will require TTD logs which will cause data delays and AVA work 
polestar - Dave checking impression counts vs. threshold 



s2s delay / availability analysis 

time delta analysis for Jiafu 

ppsm little work continued 

snowflake cost optimization pairing 


snowflake cost optimization and cost planning 
we have some new patterns 
going forward we want to continue with both 
"for the latest cmpds release" and latest workflows

forecast and optimize costs of new system for producing measurements 
immediate need is optimization
focus on max ROI pass 

hasn't been reviewed since june / july 
there was a lot of low hanging fruit 

with the baselines from current queries assess performance and cost 

tagging probably regressed so we are probably still in the same situation 

may need dev_prv (priv) 
confirm the latest version being used for cmpds (v0.8? )


## 10/30/2024

interview 

1:1 notes

ppsm and cost optimization 

interview - kaitlyn to check on what expectation for interview order 

1:1 - 
continuing on costs

netflix notes - 
line item ids from june from alpha 
new data is more correct 
highest priority is current data and going forward 
filter records without DMA 

## 10/31/2024

paramount sync 
linear with unity agency 
targetting 1q 
need to understand how we are going to work on unity agency 

need to create a ticket for linear stuff with paramount 

brands not included due to thresholds 

amazon compound key discussion 


reporting standup 

turbotax - with reporting
nbcu fasenra - waiting on spike 

paramount biktarvy - waiting on data 
mass mutual - Dave / Ryan to check mappings 
amazon TNF - paramount seeking clarity on possible mapping strategy change - moving paramount to second batch and complete mapping for everything else today Laura and Tim - custom filtering request needs to be scoped with DSci 
netflix - no more programattic backfil 

paramount linear stuff

amazon mapping 

## 11/1/2024

paramount linear feed
mass mutual confusion 

reporting standup notes

mass mutual - may be ready today - confusion about filtering - Ryan looking 
amazon TNF - mapping completed except for paramount - Alex to check syndicated comps - Ryan to check interface
eli lilly - requires new reporting template - will be waiting on data backfill from TTD 

cleaned up mass mutual confusion 

Iggee sync 

Robert Foster interview 

ppsm work a little bit more


## 11/4/2024

interview Likun 

amazon check on impression counts - something is awry in gold 

nbcu notes: 

goal - standardize and streamline data they ingest 
new format and reporting schema change 

only AEC reporting - no impact to linear 

scope of demo still needs review 

creative type - 
demo 
lots of groupings that we currently don't really have 
start with re-delivery from cuts we already have
for cuts we do not have lets scope and align on schema changes 


## 11/5/2024

reporting standup 

mass mutual - ready 
amazon - outputs look good - still need to handle line item mapping for acura / honda / paramount+ 
there is confusion about the uber campaigns and mapping 
need to update mapping to uber eats 
eli lilly - mapping and NBCU integration in flight - TTD is still outstanding 

## 11/6/2024

fubo fire drill 

amazon question about counts through liveramp analysis 

reporting standup notes

paramount biktarvy - data expected 11/14
eli lilly alz dse - targetting model run tomorrow 
eli lilly others - waiting on TTD data
disney coca-cola - waiting on unmasked data 

Maybe Iggee can go to ops support? 

further eli lilly investigation 

more fubo fixing stuff 

time off - just broadcast and ask for feedback 

EJ still available 

## 11/7/2024

disney coca cola

amazon stuff

reporting standup notes: 

amazon tnf mid season - Ryan to check line item ids with a join thats fixed for acura / honda
disney coca cola - mapping in flight should be ready today 
eli lilly alz - should be ready to run 
eli lilly the rest - still waiting on TTD data 
amazon loreal - 
fubo adidas - need to discuss recovery from schema change 

need to investigate NM household that is very bad 
We should be able to check in the gold layer 

outcomes validations 





TODO:
liveramp support case
new mexico household investigation 
fubo fix

## 11/11/2024

disney investigation 

netflix custom campaign_id overrides 

disney coca cola investigation 

disney coca cola - under investigation with cache discrepancy 
netflix - clarifying campaign override 
eli lilly - TTD integration open 
amazon loreal paris - will need clarity on mapping from amazon order id
client spec review for eli lilly, disney 
disney amex - should be able to run tomorrow 
fubo adidas - pause ad analysis requested

netflix mapping stuff 

disney fixed 

liveramp investigation 

## 11/12/2023

netflix investigation 

reporting standup notes: 

disney coca cola - With Sebastian waiting on R3
amazon TNF - with Sebastian 
eli lilly alz_dse - should be ready 
eli lilly with TTD - mapping, deduplication, ticket opened
disney call of duty - work in mapping 
amazon loreal paris - needs mapping work for skincare 
paramount biktarvy - still waiting for data - will need new interface :( 
fubo adidas - pause ad analysis Alex checking 
netflix - seeking clarification on campaign overrides

all of 2023+4 for bmw + ratuken 

netflix mapping

## 11/13/2024

reporting standup notes: 

amazon TNF - delivered 
disney coca cola - with MA
eli lilly alz_zse - with reporting 
disney amex - with reporting 
netflix - running 

eli lilly verzenio - TTD data delivered, PR in draft
eli lilly master brand and emgality - TTD data may be delivered, need to check
paramount biktarvy - need to check on delivery in s3
amazon loreal - model group readyness check and mapping questions are open 

amazon retention fix 

1:1 notes 

more fto - just take days off as needed 

delegate beyond EJ and Inan as needed 

## 11/14/2024
sick day 

## 11/15/2024

uber and polestar filters? 

eli lilly alz_dse - in process
disney COD - looking good
netflix - running now 

eli lilly other - Dylan PR's in flight - there is significant mapping work still 
amazon loreal - updated mapping complete 
fubotv adidas - interface is currently broken 
disney breakfast - waiting for unmasked metadata 


## 11/18/2024

fubotv cleanup start 

reporting standup notes 

eli lilly verzenio, masterbrand, emgality - missing some mappings
TTD publishers are a mess, discussing placement mappings 
paramount biktarvy - need to validate interface
amazon loreal - need to check syndicated comps
fubo adidas - cleanup in progress, Ryan has a PR ready 
disney breakfast - still looking to see if data has been unmasked

bi science start 

fubo cleanup completed 


## 11/19/2024

liveramp discussion with Dylan 

reporting standup notes: 

eli lilly alz_dse - in output, specs for future eli lilly to update
netflix - still running 
paramount biktarvy - Ryan investigating 
eli lilly verzenio, masterbrand, emgality - sounds like TTD delivery needs special_use_1 mapping from programmatic or direct 
- TODO: ticket for special use mapping if required
- question with MA's about program type 
- Ryan confirming ip availability in S3
fubo adidas - interface is ready for checks
amazon loreal - waiting for data availability from liveramp integration 
disney quaker oats - looks unmasked
disney fruity pebbles - does not look unmasked
kargo mini - waiting on data delivery 


paramount biktarvy 

ppsm cleanup 

## 11/20/2024

ppsm cleanup 

reporting standup notes: 

netflix - expected to complete monday
paramount biktarvy - dsc missed in spec sheet - starting today 
- category propensity error
eli lilly verzenio, master brand, emgality - can be handled post-model
- spec sheet to get updated for the many special asks for this report 
fubo adidas - running 
disney quaker oats - metadata unmasked mapping complete
disney fruity pebbles - unmasked - need to check interface
amazon loreal - checking mapping 


1:1 notes - 
onboarding Iggee 

Phil 
Maybe "Dave Labor's V3" 

Rules engine for metadata 


## 11/21/2024

uber
kargo
tv scientific
bi science
amazon loreal 
ppsm ready 


reporting standup

fubo adidas - ready for reporting 
eli lilly emgality, masterbrand, verzenio - additional group labels check in progress
netflix - still running 
paramount biktarvy - debugging category propensity failure 
amazon loreal - interface check in progress
disney quaker oats and fruity pebbles - mapping in progress 
uber eats GAA - mapping to do, nbcu and amazon integration as well 
kargo mini - data arrived, need to process 

upcoming 
mass mutual 
polestar
eli lilly multiple 
bi science
tv scientific

nbcu one platform total measurement 

## 11/22/2024

reporting standup notes: 

eli lilly emgality, verzenio, masterbrand - ready for reporting 
fubo adidas - ready 
disney fruity pebbles and quaker oats - ready 
paramount biktarvy - running 
netflix - still running 
amazon loreal - running 


uber eats GAA - PR for nbcu amazon up for review 
kargo mini - need to load into snowflake 

upcoming 
mass mutual
polestar
eli lilly - all 


1:1 with Josh 

file ticket for AWS bedrock to see if genai works 

ideas for improvement 

## 11/25/2024

nbcu optm meeting notes: 

new reference table for OPTM?  
column value in reference table for OPTM? 


reporting standup notes 
eli lilly emgality, verzenio - custom publisher mapping or is it ready? 
uber eats - interface checks needed, add DSC to report spec 
kargo mini - align on s3 delivery - needs refactoring in AVA - TJ + pairing for onboarding :) 

upcoming 
turbotax weekly reporting needs kickoff with DSci 

provisioning in production 
staging in non-production 

NBCU has set up a bucket - Matt can help coordinate destination bucket name: 
nonprod-edo-nbcu-in-s3

TODO: 
need to provision on our side and send replication roles 

export format parquet

linear delivery inbound 

AI - what did we send them previously 

outbound delivery test first, then establish pipeline to input
in contract discussion 

AI ticket for lambda function monitoring 

## 11/26/2024

reporting standup notes 

eli lilly emgality, verzenio - publisher mappings as good as they can be, ready
netflix - waiting for spike based 
paramount biktarvy - ready for reporting 
amazon loreal - site based mappings deadline this afternoon 

uber eats - Ryan PR merged and checking interface 
kargo mini - data loaded - mapping required and interface checks needed

kargo mini work 

https://edoinc.atlassian.net/browse/ITOPS-1842
For lambda alerts ^ 

Phil onboarding 

Iggee onboarding 

## 11/27/2024

reporting standup notes
uber eats GAA - done
Kargo mini - waiting on data completeness check with client - probably Monday for an answer
mass mutual - should be ready 
polestar - NBCU data needs to be integrated and checked in the interface 

upcoming 
kargo under-armor - request for CES
turbotax - meeting later today 

check AVA-3491

1:1 notes - 

pairing with iggee

## 12/2/2024

kargo refactor 

reporting standup notes: 

eli lilly emgality - in reporting 
uber eats - outstanding question on dominos campaign
kargo mini - waiting for confirmation from client on expected counts / dates meeting later today
netflix monthly - need to understand syndicated data 

mass mutual - Ryan checking interface
polestar - PR expected shortly for metadata from Dave
eli lilly - also needs mapping 

paramount state farm - expecting schema change to include eye q bundle
kargo under armor - need to prioritize data completeness checks to support CES schedule


kargo PR ready
PPSM PR ready 

## 12/3/2024

reporting standup notes: 

mass mutual - running 
polestar - running 
eli lilly - metadata mapping in progress - will require special_use_1 too - Dave to open ticket
kargo mini - little bit of mapping need to check interface after mega-dag

upcoming 
paramount state farm - need to modify interface for eye q bundle 
kargo under armour - waiting on data delivery 

2 good deliveries 

## 12/4/2024

eli lilly mapping update for nbcu with Iggee 

reporting standup 
eli lilly reports mapping is progress - 
alz_dse and mounjaro - waiting on client data 
masterbrand emgality verzenio - spec sheets in progress - data checks in flight 

kargo under armour - data arrived yesterday - should be ready for checks now
need to review end date - should we go through 12/8? 
nbcu photoshop - ticket for infra should be created @dave

netflix target - early next week 


1:1 

ppsm PR 

generate_new_prefix 



phil / iggee 

## 12/5/2024

check on mega dag export for disqo 

reporting standup notes: 

polestar - should be ready for reporting
kargo mini - also ready for reporting 
eli lilly verzenio masterbrand emgality - running
kargo under armour - reporting period ends 12/8 - needs mapping
eli lilly alz_dse and mounjaro - waiting on innovid mappings
nbcu photoshop - will need mapping

netflix - waiting on client campaign details



upcoming 
kargo att -  




Dylan re ticket for drop off in liveramp?  

Liveramp tickets 



## 12/6/2024

iggee pairing 

eli lilly alz_dse and monjaro - should be ready soon 
nbcu photoshop - run started  
kargo under armour - waiting for reporting period to end
netflix - waiting on client campaign details 

upcoming 
disney - magic words - we probably need to discuss in more detail 

## 12/9/2024

tv scientific 

eli lilly - ready for reporting 
nbcu photoshop - reado for reporting 

kargo under armour - dave looking at occurrence count after 12/3

netflix - no custom requests this round

lots of reports in spec approval this afternoon 

disney magic words - meeting thursday 

## 12/10/2024

ppsm cleanup

reporting standup notes: 

netflix - running 
kargo under armour - Ryan checking mapping and interfaces

paramount state farm - waiting on data 
eli lilly 4 reports - no emgality - Dave working mapping in advance 
disney - magic words - meeting Thursday to understand technical scope better

fubo pause ads for helmans 
fubo grammerly - question about model group 
amazon auto reports end of year 

r2 scheduling discussion 

Amazon notes: 

study setup from manual to automated 

measurability 
manually appending urls to the creatives 
results shareback 

order id metadata - fetch metadata 
automated measurability checks - can we provide a query for syncidated volume thresholds? 
sufficient funds to cover measurement

vendor specific fields needed for measurement 

amazon funded or client direct with amazon integration? 

targetting information 

s3 results delivery 

ao response objects vs. "one time" 

search terms for mapping 

theshold calculations for amazon to implement 

category - date range - brand - syndicated check

- search term checks?  

targetting cut thresholds 

in campaign report?  

spec markup / response before end of year 

- goal - real time approval
- category health / brand check 

q1 target for integration 

## 12/11/2024

kargo cleanup 

ppsm testing 

## 12/12/2024

reporting standup notes 

disney meeting notes: 

magic words
suppliment - not immediately available 
give read on current campaigns - and again in January 
ASAP, post campaign 
transformation on data that is not immediately available programmatically right now 

90 day window - starts with load 

opt out and new tables in share 

1:1 notes

ppsm 
opt outs 

## 12/13/2024

ppsm stuff




things to happen for liveramp / amazon
one time re-load
update existing daily job in manifest
update type of line_item_id
full refresh incremental downstream tables 
check for "has it been sent to liveramp?"




## 12/16/2024

disney new data

nbcu export prep

covergirl 


## 12/17/2024

reporting standup 

kargo check date range 

paramount - still waiting on data 

disney magic words - Dave asked questions to Disney
need to align with MAs

turbo tax - outstanding questions 

covergirl - interface needs checking 

find nbcu egress storage integration 



## 12/18/2024

standup topics

covergirl 
disney 
nbcu sample delivery 

reporting standup notes 

eli lilly - waiting for end of year
amazon - waiting for end of year

spec approval later this afternoon 

check fubo el/sl 
check fubo duration 

biscience and fubo mapping review with Iggee 



1:1 notes 

nbcu storage 

performance review in lattice thank you 

follow up with Jiafu on ticketing for reporting ops scoping activities 

follow up in slack on 

## 12/19/2024

appointment

interview

ppsm ready 

## 12/20/2024

fubo legacy interface also required for mapping content genre 

reporting standup 

biscience debugging 

disney magic words delayed until Monday 

## 12/26/2024

disney magic words ready 

reporting standup notes 

## 12/27/2024

reporting standup notes: 




## 1/2/2025

reporting standup notes: 

## 1/6/2025

tv scientific 
bi science
fubo 
ppsm sync 


cell I 14
- double check 

new row for new report run 
+7 days to delivery date
+7 days to report end time
report start = end - 4 weeks

Jiafu / Edward re: list of brands OR list of model groups
Jiafu / Edward about table names from Yi - populated into ops schedule / corresponding s3 tag map 
Seth - mapping of manual s3 tags to input tables 

## 1/7/2025

reporting standup notes

nbcu discussion 

turbotax investigation 

## 12/8/2025

reporting standup notes: 



1:1 notes

flexibility for potential need for ongoing treatment away from my usual desk

## 1/9/2025

turbotax 

other ops meeting link?  

KR review - 

what can I actually do to help orchestrator and PPSM work 

AEC AO Paramount metrics

ops status and improvements - 

Do a full pass of each data feed integration for cleanup / ticketing on improvements


## 1/10/2025

talk to russell about ops tickets 

schedule time for pilot / dangling client review 

work queues for full scope of "readiness" 


meetings
ppsm run and rerun 


fubo scoping duration

## 1/13/2025

- was very ill

## 1/14/2025

netflix - Ryan got it across the line

A+E need to coordinate with infra 

kargo - needs update / cleaning 
lionsgate_ttd - needs update / cleaning 
amazon liveramp - needs planning for liveramp extension to other clients 
mgm_canvas - needs update / cleanup 
nbcu - PIH update / cleanup pending infra 
paramount legacy - needs update / cleanup 
ttd_a24 - needs update / cleanup 
ttd_elililly - needs update / cleanup 
uber - needs update / cleanup threshold check plan 
univision - needs update / cleanup / new interface 
wurl - needs update / cleanup / new interface 
disney - cleanup legacy 


pixels and buy side 
bayer - ? 
covergirl  - cleanup? 
elililly - cleanup? 
mass mutual - cleanup? 
old navy - ? 
pandora - ? 
polestar - cleanup? 
target - ? 
taxact - ? 
turbotax - cleanup? 
uber - cleanup? 
uopx - cleanup? 
virgin voyages - ? 
vix - ? 
zillow - ? 

blade - kill? 
calpsy - kill? 
dnb - kill? 

8k bump to 198k base 

## 1/15/2025

amazon TNF checks with Ryan 

A+E and tv scientific across the line 

amazon investigation closed out 

1:1 notes: 
ppsm switchover from Seth - what is happening?  
dsc pr 

## 1/16/2025

amazon stuff
A+E ready for checks

## 1/17/2025

disney investigation 

A+E update

cleanup tickets opened

## 1/21/2025

disney incremental fixes
paramount restatement handling 



## 1/22/2025

paramount checking restatement 



1:1 topics

upcoming health appointment stuff
just reasonably accurate accounting 
ops in the loop and backup aligned 


ppsm next steps and filtered inputs 
mapping model / brand / etc? 

ongoing impact to larger vision 
and accomodations if needed.  

paramount restatement continued 

## 1/23/2025

paramount continued 

turbotax update 

really not feeling well 

subdomain discussion with Inan

Iggee got a bunch done 


TODO: 
ppsm update to capture brands


## 1/24/2025

paramount restatement to gold 


retro notes: 
dedicated ops channel for async standup? 
reports
TAM Handoff checks feeding into the monitoring / alerting work? 
- pareto of most common checks for most standardized reports


## 1/27/2025kj

standup topic - when a dsc is deployed after a view is built the recovery? 

travis re: cache retention period 

## 1/28/2025

Notes: 

cardinality
default group label volumes and match rate
review model run issue tracker 
mapping status
custom filtering 
model group size 
mapping version input 

## 1/29/2025

nbcu switchover 
roku 
loreal 

1:1 notes: 




monday AM too

thursday PM too 

disney opt out pr
loreal pr 


review ppsm queries for 


## 1/31/2025

superbowl stuff 

super bowl tickets and DSC 

## 2/3/2025

super bowl JIRA ticket for new DSC / interface 

## 2/4/2025

paramount cutoff for restatement 

jan 30th on.  

superbowl dsc 

nbcu pih - is a new schema - study_id was not included 
manual tracking on pih with emails 

## 2/5/2025

fox site question?  

nbcu global brand name 

TODO: wishlist for mercury 

## 2/6/2025

roku dsc 

out for treatment 

## 2/7/2025

check superbowl 

pull requests review 

1:1 notes: 

6-8 weeks starting soon of commuting for treatment daily 
+ weekly / bi weekly treatments for half day 
accomodations and considerations

## 2/10/2025

nbcu cut over 

nbcu PIH discussion 

paramount restatement 

reveiw roku pixel PR 

inscape 

## 2/11/2025

paramount eye q bundle values 

mamata - paramount checks

roku PR review 

nbcu _dev check over 

## 2/12/2025

roku PR review 

paramount identity notes: 

1:1 notes - DRRE 

lighthouse PR 

## 2/13/2025


AFK in AM 

AFK in PM 

pre commit cleanup 

nbcu fix 

roku pr 

## 2/14/2025

nbcu checks

roku PR 

bi sciences 

disney duplicates thread 
- started 

## 2/18/2025

restatement for paramount 

will get an advertiser count before the restatement 

pmp can provide a column for us to filter
maybe not on dr 

NBCU PIH meeting 

all xp should be labeled the same way 

advertiser name is linear - global advertiser name is only digital 
there may not be a common mapping 
equivilent to advertiser_field in linear 

pih channel thread for infra and note on study_id 

Travis for Ops work standup 

## 2/19/2025

warner discussion 

direct share in snowflake 


1:1 notes 

ops overall status 

scheduling 

DRRE discussion 

liveramp situation 

## 2/20/2025

## 2/21/2025

 

## 2/24/2025

Jiafu and Travis and Josh RE: what about epics for ops to track the client? 


## 2/25/2025

discussion topic 

paramount restatement with Calvin 

liveramp stuff too

## 2/26/2025


DRRE output in a couple of weeks?  

paramount restatement stuff

prep search cache failure 

discusion about mercury 

liveramp warehouse fix 

## 2/27/2025

biscience stuff

paramount situation 

- digital no permissions - resolved 
- linear column situation - resolved

disney filter 

## 2/28/2024

cleanup discussion 

Travis - Jiafu on paramount 

copilot evaluation 

paula to review mapping - 


## 3/3/2025

check liveramp days 

bisciences handoff

liveramp discussion 

FYI - I'm AFK for a couple of hours during each afternoon for about the next 5 weeks or so.  
I'm trying my best to schedule this for minimal disruptions in my work availability, and making myself available additional time afterwords, but it does have an impact on my ability to turn around anything super time sensitive during my commute / appointment. 
It might be worthwhile making sure that anything I'm working on of super high urgency has a backup resource or someone else with context for the next little while. 



## 3/4/2025

biscience pairing?  

NBCU PIH discussion 

study_id - possibility that they would be able to share a table with us that is "manually mantained" but maybe enables us to link campaigns across linear and digital?  

more likely is manual mapping process after the report creation - check @Jiafu on this 

Audience reporting in the roadmap - what is the timing on this?  

OF NOTE: study_id and audience targeting will require restatements from NBCU 

Jiafu - if the binary "in / out" value of audience targeting can be delivered to us, we can group by this in the output 
Not a capability on NBCU side
Investigate experian for this AI - ? 

Actual delivery of in campaign report Q2 - date range?  specific to campaign? 

discuss metadata availability to capture "mid campaign" flight dates and logic to handle. 

data deletion meeting notes

- option: maintain a pixel id / pulisher / campaign mapping for deletion after 6 months 

## 3/5/2025

reporting ops standup notes.  

discsussion topic - typing in seed files 

wb in west 

wbd work 

## 3/6/2025

jlr pr 

## 3/7/2025

## 3/10/2025


wbd pr across the line 

cleanup PR in draft

rules review 

## 3/11/2025

## 3/12/2025

directv stuff 

1:1 notes: 

## 3/13/2025

dish for Iggee 

directv 


CCCG0746000H
CCCG0753000H
207958788
206308038
CCCG0752000H
204524762



TODO: 
finish directv

liveramp survey response

## 3/14/2025


directv 

wbd



## 3/17/2025

ampersand investigation 

## 3/18/2025

nbcu pih notes: 

feedback on test delivery today 


study_id 


## 3/19/2025

inscape 

exports 

## 3/20/2025

fto - lots of appointments 

## 3/21/2025

disqo / turbotax export investigation 

directv confusion 

follow up with the directv discussion with Iggee 

## 3/24/2025
new laptop setup

## 3/25/2025

kargo
rules meeting 

wbd mapping situation 

## 3/26/2025

ppsm run 

kargo notes

univision mapping questions 

NBCU deletion is next 


## 3/27/2025

ppsm 

nbcu pih notes: 

new pih interface - based on campaign_id filter 
probably makes sense to make a new dsc? 

placement name groupings is all they need
"ad innovation" or NOT

pivot to the ma dashboard.  




1:1 notes - 

scaling down commutting 
ppsm situation - Josh is driving 

pre model vs. post-model 


test failure 

univision cleanup? 

deletion requests designed 
and planned for CMPDS cache requirements 

## 3/28/2025

univision cleanup approved 


ppsm param update

## 3/31/2025


discussion topic: univision cleanup 

nielson 
panel only data 

## 4/1/2025

PIH benchmarking / comparing to syndicated baselines of "non-nbcu" 

tmobile - line of business 

linear brands to be sent today 

topic monday to sunday 
should we change the default week_start to monday? 

campaign_id vs. study_id 


cache expiration 

## 4/2/2025

1:1 deletion framework velocity 

TTL - (initial) 

event_id level publishing from AVA? 

no longer keyed by event_id or hh - 
even aggregates for sources can be up for deletion 

value of x such that all the ttls >= x
worst case for cmpds how bad that would be? 

wholesale expiring caches 

- write up a doc - general framework 
Does that satisfy DSci requirements 
X can be as low as Y 

spectrum of row level to totally aggregated 
- PPI 
- Source no longer valid 
- ? 

## 4/4/2025

ppsm exeuction 

## 4/7/2025

paramount restatement 
completed 

mgm interface

## 4/8/2025

mgm continued 

joseph re similarweb 

paramount restatement meeting 
4/14 plan 

category filter on their side, but the definitions don't really align 

adding new brands into categories 

big category is movies, but may be others
probably pharma too 

## 4/9/2025

TWyQ4RoS2lDlm1Z3g1XZn
mgm sk 

struggle to get my zzz_tim stuff back to happy 

covergirl discussion 

pointed questions with key context 

engineering product requirements 

deletion requirements 

@edward 

unpleasant rubber stamping of tickets 

## 4/10/2025

missing standup tomorrow - online before and after 

restatement runbooks 

## 4/14/2025

nbcu recovery 

paramount restatement 

## 4/15/2025


ikea review 

NBCU plan 

PPSM debugging 


## 4/16/2025

deletion requirements 


Talk to Travis about BI Science ingestion 

1:1 topics
- deletion request framework 
- 

Write things up - have a more dedicated session

## 4/17/2025

writeup for Dave on DSC status 

nbcu deletion started 

## 4/18/2025

deletion reqeusts

NBCU by monday 

## 4/21/2025

nbcu deletion runnable 


## 4/22/2025

## 4/23/2025

paramount source refresh 

## 4/24/2025

check covergirl pipelines 

## 4/28/2025

nbcu deletion stuff

deletion plan 


## 4/29/2025

find slack message on nissan outcomes and ask Peter 

## 4/30/2025

PPSM change to sync for extract 


## 5/1/2025


meeting with travis for amazon dsp 

## 5/2/2025

ppsm 


nbcu pih stuff 


edward 360 notes

check to see if anyone is using cursor 

## 5/5/2025

ppsm stuff 

## 5/6/2025

nissan 5/15 due date 

univision


dsci Re: PPSM schedule 

seth re: spike is empty condition 

## 5/7/2025

ppsm

univision 

1:1 notes: 

tomorrow afternoon off

ppsm bottlenecks 

lambda concurrency 

snowflake warehouse 

warehouse as pass through argument to the lambda - talk to Seth

## 5/8/2025

disney magic words again 
dynamic ad after significant moment in sports 

## 5/9/2025


nissan work

## 5/12/2025

set up a retro just for covergirl integrations, liveramp

## 5/13/2025

amazon and juice

## 5/14/2025

aspirational deletion requests 
- what can be handed off 

clean up document on deletion 

Double check user with Seth on the service user for the lambda


review Iggee refactor PR 

refactor dsp to fully normalize line item 

## 5/15/2025

dsp discussions 

covergirl retro 

## 5/16/2025

ppsm, pull request reviews

## 5/19/2025

deletion request stuff 

## 5/20/2025

juice 

unexpected exposures for polestar and nissan

client reports syndicated publishers that are unexpected 

Big local campaign - classified as national instead of local

Tubi and Pluto - unexpected 

What is our playbook for these?  

Audit creatives 

Deduplication analysis - is there anything we want to monitor 

Green light checks - proactively look at volumes on tubi and pluto 
and volume on national linear 

## 5/21/2025

juice 

PPSM quick fix 

Programattic vs. Direct 

MA / TAM re: what are we currently using as a template for EDO preferred fields? 
Dynamic tables - with X properties 
Restatement - handling and cost 
Adding buy type 

Runbook - specific standardized fields + customized per client 

Deletion

Move all the DS stuff together 
TAM stuff together

MODE for TAM 

Is DS actually comfortable with valid_until of ~ 30 days (i.e. for NBCU and all buy side clients)? 

If we delete using source event ids, and then the map to "EDO" event ids the cache in DSci may contain events we actually deleted but the "EDO" event id would not necessarily match


Do scored exposures count as an aggregate?  Can the be an aggregate?  Do they contain crosswalk_hh 

## 5/22/2025


## 5/27/2025


juice fixes, 


## 5/28/2025

Travis RE: Roku and TTD

disney

juice mapping finished

refactor 

## 5/29/2025

deletion topics discussion notes: 

outside of deletion what is easiest for DSci 

## 5/30/2025


follow up with Travis 


## 6/2/2025

disney and juice follow ups

## 6/3/2025

deletion stuff

disney follow ups

juice follow ups 

## 6/4/2025


deletion stuff for NBCU 


## 6/5/2025

AI: follow up on exact language for FOX

## 6/9/2025

deletion request stuff

## 6/10/2025

TTD follow up 

## 6/13/2025

AVA-3694

108075

2231894


## 6/16/2025

NBCU emotional alignment 

- guidance to Jiafu 

## 6/17/2025

liveramp dish, ampersand, sling - need to run monthly manifest

Jack, Christine and Dave 

Scope the meeting appropriately to 
- Are the dimensions we are concerned with present
- Maintaining - ownership in legal

Refresh legal / dave on vision 

## 6/18/2025

when did monthly load run? 

Ava Staging (Account ID: 871810242998)

Role: staging-ava-mwaa-user-role

## 6/20/2025

liveramp encrtyption key change?  

## 6/23/2025

Disco follow up 

liveramp improvement 

check on liveramp ticket 

Phil RE: rules engine with content tile 



TODO: 
test disney
review deletion stuff
justworks training 
turbotax deletion 


## 6/24/2025

deletion requirements
KAP


## 6/25/2025

bi science PR 

XX fubo PR from Phil 

## 6/26/2025

disney deletion ready 

async follow up with Dave and Jack and Jiafu 


AVA_AEC_PROD_PREP_R.ENG.DSC_EVENT_FEED_MAPPINGS

## 6/27/2025

amazon follow up 

## 6/30/2025

disney merged

## 7/1/2025

wurl new file delivery

paramount meeting notes

-- 

will remove filter for delviery type and ad type name 
"Direct Response" and PMP both included 
concatinate ad_delviery_type || ad_type_name into special use 3

filter will be applied within NBCU filter and reaggregation 

sold type and transaction type from paramount source 

Q2 delivery in two weeks
pause q3 delivery to switch over to new pattern 
How long are we going back in time for the new pattern? 
backfill is through all of q3 
impact is to july 28th delivery 

new media_key values.  Need to ensure speical_use_3 is included 
in default group labels 
Is the media key split in orchestrator?  Is it split later? 

list of filters currently applied 

Need a sync on taxonomy mapping post PMP delivery 
to verify mapping is valid across 

mappings will not be done in q3 but before q4 


NBCU meeting notes: 

Jiafu - letting NBCU know when there will be changes to data pipelines 
Proactive communication 

Could we do slack?  Maybe not so much.  
What can we do to make NBCU integration totally turn key?  

automated study id management 
improving communication on enhancements 

each LOB will be mapped to hit times and study ids

create separate bucket for non-prod deliveries 

Jack RE: feedback on the shared sheet.  

## 7/2/2025

A+E follow up ticket 

Follow up with Phil on documentation demo for wider team

sheet with clients as rows and columns representing integration type with other details 

1:1 notes: 

Phil kudos on rules engine 
Demo?  Something?  

## 7/3/2025

wurl done 

juice update 

TODO: 
Phil re: demo of dbt docs 
google sheet with clients + integration type and detials of client config

mode dashboard for campaign_id compliance for TTD and fox 

paramount dev interface 

## 7/7/2025

Move AECOP-545

paramount dev interface

deletion across the line for disney and amazon 

juice backfill 

## 7/8/2025

nbcu notes 

histogram of % of impressions in each 

impression_id 
agreed to provide in the way I asked for :) 
And continue to provide from the standard sell side interface

is really anticipated to be a one time thing 

campaign, advertiser level 

Grooming 
NBCU emotional alignment ticket? 
Backlog of CI/CD environment stuff? 

## 7/9/2025

Lots of stuff

## 7/10/2025

check for ampersand data 

Seth re paramount special use 3

check with Paula on wurl mapping 

Phil RE: attending ops standups for a little while? 

Deletion thread with Jack follow up 

Plan for PPSM notes: 

Schedule time with Edward and Dylan to walk through AO Orchestration 
- 


inscape notes 

identify all the DS dependencies 
how many assorted dashboards / dependencies of TAM etc. non-medallion 

outcomes would only block goal two and not goal one 

schedule a meeting with Peter and start a thread to discuss 

## 7/11/2025




Scoping work in flight: 

PPSM work

Cleanup of non-medalion 
DSci meeting 


## 7/14/2025

similarweb PR review continued

fluff investigation 

PPSM work scoping 


## 7/15/2025

dish vs. sling 

What is up with the MDE adjusted results
Filtered and non-filtered
- filter is study_id / campaigns explicitly enumerated
What is the toggle? 
full compliment of mde t/f filtered t/f

ampersand coty cover girl is not showing up in mode


non medalion cleanup 

## 7/16/2025

ppsm sync 

for every group label, there is also special_use_3 

1:1 notes

## 7/17/2025

AFK afternoon 

## 7/18/2025

Infra re: paula snowflake access.  

## 7/21/2025

ppsm stuff

## 7/22/2025

sick

ppsm testing actually running locally 


## 7/23/2025

still sick

## 7/24/2025

NBCU tech sync meeting notes: 


## 7/25/2025

ppsm fixes 

fix for table rename situation 

## 7/28/2025

NBCU privacy feed discussion 

## 7/29/2025

Figure out why ip_deletion has so many duplciates 

## 7/30/2025

PPSM investigation 

quick fox news interruption 

## 7/31/2025

PPSM investigation into PR 

## 8/1/2025

TODO: 
fox news ingestion 
ip_deletion stuff

nbcu email rewrite draft 

JLR outcomes interface 

## 8/4/2025

PRs up for review 

## 8/5/2025

JLR fix supported outcomes. 

IP deletion good to start with adding the cleanup stuff 

Edward re: when performance issue is resolved.  

Any buy side clients with counterparties need to be enumerated 

## 8/6/2025


Phil RE: amazon nissan publisher stuff

check disney situation 

Netflix pixel PR review.  



Fox news PR review. 

ip_deletion cleanup completed 

disney completed



## 8/7/2025

netflix PR reviewed.  

PPSM next steps: 

visualization or good description of the actual PPSM processing steps for review.  

outline my plan for integration tests and refactor to a new world

Document input and output interfaces for PPSM 

## 8/8/2025

univision quick look at share 

Need to look at open enrollment 

fixed similarweb - I think

## 8/11/2025

ping infra on univision 

did I finish fox news?  

finished fox news

## 8/12/2025

JLR campaign id PR 

Check on disney helper.  Is it doing anything?  

## 8/13/2025

univision 

Discussion on stitching spec 

Goal: 
merge results from spike into linear

apply stitching to more group labels 

how do you deal if you have too little data to stitch against? 

R2 - Taffee has a limited form of the algorithm implemented 

R3/R4 ad hoc we might do some stitching 

GOAL: 

Factors from within stitching will be manifest in the data 
Computing factors and application of factors 

We think the unit of time is weekly 

property Toyota does twice as good as honda 

ratio between linear and streaming 
ratio across brands is preserved 

brand week, 

is all of this always going to a more granular level 

## 8/14/2025


nbcu pr review 

univision start 


AFK the afternoon 


## 8/15/2025

PR reviews

disney ip stuff 

quick optimization for nbcu deletion request frequency up for review

AO crossfunctional end-to-end design review 

## 8/18/2025

univision and disney IP situation 

ttd mapping situation, Iggee fixed 

## 8/19/2025

Dave RE: words on how a L3 gateway switch might add its IP to the x forwarded for header in a confounding way with ESPN so it looks like a trusted proxy 

Mamta re: required brands for PPSM 

Future of PPSM investigation 

## 8/20/2025

univision fix

medium term - and after we have sorted some things 
most important goal is iterating on the stitching data processing logic 

start with R2

## 8/21/2025


univision

bi pr review 

stitching stuff

Edward, Josh RE: TAFFEE access patterns 

## 8/22/2025

PPSM stuff


## 8/25/2025

check uber zips 

PPSM stuff

## 8/26/2025

uber zip check fix 

look at jira action items or not sub task integrations 

## 8/27/2025

PPSM stuff

## 8/28/2025

TODO: review that document 

## 8/29/2025

TODO: standup raise bi science time availability (load next day) 

## 9/2/2025

check jardiance and nexguard in dq dashboard

eli lilly publicis context for zenith 

fedex trying to get back 

what to do with ikea?  
what to do with JLR 

loreal no longer active

Mass mutual nbcu campaigns?  
sent slack 


paramount legacy with ss 

TTD EDO what does report delivered mean, travis

univision - active but what is our agreement? 

wbd ss ? 

zillow - product question 

unsupported but not dead: 
old navy
possibly zillow

PPSM work until late 

## 9/3/2025

check paramount special use 3 after mega-dag

versioned rules

718

aggregate discussion 

## 9/4/2025

For non-medaillion cleanup, use the dbt artifacts data 

Focus on cleanup until Tuesday 

## 9/5/2025

cleanup work 

## 9/8/2025

fire drill 

lighthouse deletion PR review 

Line 61 in prioritized painful tables
and working up


## 9/9/2025

Continued cleanup 


## 9/10/2025

Edward RE: requirements / ownership / boundaries around each component inside the end to end flow

cleanup continued 

## 9/11/2025


cleanup, liveramp fire drill 

In SD

## 9/15/2025

NBCU coordination 

cleanup across the line 


## 9/16/2025


ops stuff


PPSM start


TODO: capture all of the spilob dependencies

## 9/17/2025

Check in with liveramp 

Paramount statefrarm check 

Stitiching stuff 


## 9/18/2025

ops stuff, nbcu stuff, liveramp stuff
late lunch 

## 9/19/2025

Working from service center

AECOPs - Balancing and planning with 

## 9/22/2025

Report end date on AECOP project 

liveramp - 
account for exact numbers for amazon 

## 9/23/2025

liveramp sync into liveramp channel 

nbcu update 

finish rvm install 

poetry testing 

nbcu remove parallelism on big tables? 

## 9/24/2025

nbcu stuff 

retenetion meeting

lighthouse meeting

stitching regroup and 1:1 

1:1 topics 

## 9/25/2025

NBCU continued

achieve very specific buy side and sell side scope

communicate that if the reference view modified_at value can be trusted I think we have a path forward to limit the scope of queries 

## 9/26/2025

check univision 
confirmed 

Do the pixel for outcomes

## 9/29/2025


outcome pixel

liveramp export back on 

NBCU ingest pipeline update

## 9/30/2025

297969
297980
297981

NBCU campaigns. 

lighthouse discussion topic 

liveramp stuff 

## 10/1/2025



discussion topics
sleep number

NBCU investigation 

liveramp recovery 
4 files 

## 10/2/2025

liveramp again 

nbcu retention follow up. 

## 10/3/2025





TODO: 
finish retro and add to fishbone 

## 10/6/2025

tired - retros

## 10/7/2025

getting back to stitching 

## 10/8/2025

stitching stuff

## 10/9/2025

stitching sync 

KAP 

## 10/10/2025

## 10/13/2025

stitching stuff

long lunch

## 10/14/2025

stitching stuff 

## 10/15/2025

uber meeting 

stitching clarified 

So - Looking at the query that I'm presently running : 


select 
a.*
, group_level[0][1] as brand
, group_level[1][1] as platform
, group_level[2][1] as l3_network
, group_level[3][1] as week_string
from 
AEC_MODEL_OUTPUTS.OUTPUT_DSC_PARAMOUNT_SS_FROM_PARAMOUNT_SS.CC1_AO1_ALL_AGGREGATES_VIEW as a 
where status_metadata in (
'"ID53"'
)
and group_columns::array = PARSE_JSON('[
  "BRAND",
  "EDO_MEDIA_TYPE_LAYER3",
  "INSCAPE_APP_SERVICE",
  "WEEK"
]')
and lift is not null
and all_n_exposures is not null
I tried to use filter instead of hard coding the order - which snowflake complained about.  
I can hard code the group_columns orders into the stitching logic, that feels bad
We could couple the group_columns / group_level code in AVA with the implementation in CMPDS, that also feels bad. 
I tried for a moment to use reduce, but I gave up pretty quickly - I think that the operation actually requires both map and reduce.  


## 10/16/2025

AVA_AEC_PROD_PREP_R.liveramp.liveramp_directv_v2_occurrences_source?

stitching stuff 

## 10/17/2025

stitching stuff


## 10/20/2025


lots of meetings 

## 10/21/2025

stitching 

meetings

KAP 

## 10/22/2025


stitching


## 10/23/2025

stitching 

Demo of stitching

ran stitch of networks from spike 

## 10/24/2025


nbcu privacy documentation 

cleanup stuff

## 10/27/2025

cleanup 

nielsen test

## 10/28/2025

verizon

## 10/29/2025

## 10/30/2025

items for grooming
- roku
- stitching next steps
- do we need a clean backlog?  
- anything from Dave

## 10/31/2025

stuff

## 11/3/2025
FTO 


## 11/4/2025

Reach out to Jiafu on compliance stuff 

Directv  

nissan ticket for compliance 

Jiafu re: paramount 

Shawn RE: any pilots etc that are over? 

lighthouse check staging

## 11/5/2025

doing cleanup and compliance stuff

started buy side look

## 11/6/2025

check carmax outcome pixel 
done


lighthouse staging check

## 11/7/2025

paula feedback

dave feedback

continued buy type 

cleanup


## 11/10/2025

buy type 

## 11/11/2025

A24


## 11/12/2025



Disney magic words review


## 11/13/2025

FTO 

## 11/14/2025

turbotax interface.  

## 11/17/2025

NBCU stuff 

ttd amex discussion in ava standup topic 


## 11/18/2025

buy type across the line

## 11/29/2025

lighthouse deployment huddle 

a24 ttd 







TODO: 

ROKU 

follow up on compliance 




















