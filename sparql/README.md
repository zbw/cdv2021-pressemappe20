# Queries for CdV 2021 PM20 (20th Century Press Archives)

Normally the queries use the SPARQL endpoint at
`http://zbw.eu/beta/sparql/pm20/query`. Queries on the Wikidata endpoint
`https://query.wikidata.org/sparql` may link via PM20 folder ID (wdt:P4293).
Federated queries involving both endpoints are supported. Alternatively, the
named graph `http://zbw.eu/beta/wikidata/ng` holds an extract from Wikidata
(labels, German Wikipedia pages, etc.) for the connected items.

All queries are restricted to the subset of folders relevant for _Coding da
Vinci 2021_. For queries on the total of PM20, see
https://github.com/zbw/sparql-queries/tree/master/pm20.


Query | Description
------|------------
[dummy](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/cdv2021-pressemappe20/contents/sparql/dummy.rq) | Template for queries ([results](http://zbw.eu/beta/sparql-lab/result?resultRef=https://api.github.com/repos/zbw/cdv2021-pressemappe20/contents/sparql/results/dummy.json))
[count_folder_types](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/cdv2021-pressemappe20/contents/sparql/count_folder_types.rq) | Count folders by type, with counts of GND and Wikidata IDs and German Wikipedia page links
[search_folders_by_text](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/cdv2021-pressemappe20/contents/sparql/search_folders_by_text.rq) | Search folders by text 
[companies_with_reports](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/sparql-queries/contents/pm20/companies_with_reports.rq) | Full list of companies which have business reports


## Controlled vocabularies (parameterized queries)

### Person folders

List | Description
-----|------------
[nationality](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/sparql-queries/contents/pm20/count_value.rq&property=schema:nationality) | Nationality
[activity/about](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/sparql-queries/contents/pm20/count_value_sub.rq&sub=zbwext:activity&property=schema:about) | Field of activity
[activity/location](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/sparql-queries/contents/pm20/count_value_sub.rq&sub=zbwext:activity&property=schema:location) | Country of activity

### Organization folders

List | Description
-----|------------
[type](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/sparql-queries/contents/pm20/count_value.rq&property=dc:type) | Type of the organization
[industry](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/sparql-queries/contents/pm20/count_value.rq&property=schema:industry) | Industry / sector
[location](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/sparql-queries/contents/pm20/count_value.rq&property=schema:location) | Location
[broaderLocation](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/sparql-queries/contents/pm20/count_value.rq&property=zbwext:broaderLocation) | Broader location
[member/roleName](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/sparql-queries/contents/pm20/count_value_sub.rq&sub=schema:member&property=schema:roleName) | Roles of organization members


## Links to other datasets

Query | Description
------|------------
[economists](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/cdv2021-pressemappe20/contents/sparql/economists.rq) | Economists with links to Wikipedia, DDB images, EconBizWorks
[judaicalink_overlap](http://zbw.eu/beta/sparql-lab/?endpoint=http://zbw.eu/beta/sparql/pm20/query&queryRef=https://api.github.com/repos/zbw/cdv2021-pressemappe20/contents/sparql/judaicalink_overlap.rq) | Overlap in CdV datasets by FID Jewish Studies and ZBW (JudaicaLink and PM20, via common GND)


