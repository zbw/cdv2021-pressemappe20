# Dokumentation des Datenformats

_TODO: Update für CdV2021_

Im folgenden wird eine vorläufiges und noch sehr ausschnitsweises Datenformat
verwendet. Die Veröffentlichung der Pressemappen-Daten steht noch am Anfang.
Insbesondere harren die intern benutzten kontrollierten Vokabulare noch einer
Konvertierung und eines Mappings nach [Wikidata](http://www.wikidata.org). Für
die Personen- und Firmendossiers, besonders diejenigen mit vielen Dokumenten,
ist das Wikidata-Mapping dagegen schon fortgeschritten - siehe die
[Mix-n-match](https://tools.wmflabs.org/mix-n-match/#/)-Kataloge unter dem
Stichwort "PM20". Derzeit sind die Einträge aus konrollierten Vokabularen als
Stringwerte wiedergegeben.

Auch die inhaltliche Klassifizierung der Firmen und deren Beziehungs-Netzwerke
(Vorgänger/Nachfolger, übergeordnete/untergeordnete) sind "Work in Progress".

Die Veröffentlichung erfolgt im [JSON-LD](https://json-ld.org/)-Format. Es ist
über einen [context](./context.jsonld) mit erweiterten semantischen Informationen
verknüpft. Zugleich kann es unter Außerachtlassen dieses Kontexts wie jedes
andere JSON verarbeitet werden.

## Beispiele

### Beispieldaten für ein Personen-Dossier

```json
{
  "@id": "http://purl.org/pressemappe20/folder/pe/005823",
  "@type": [
    "Pm20Folder",
    "PersonFolder"
  ],
  "identifier": "pe/005823",
  "temporal": "1922-",
  "hasOccupation": "Führer der Unabhängigkeitsbewegung",
  "nationality": [
    {
      "@language": "en",
      "@value": "India"
    },
    {
      "@language": "de",
      "@value": "Indien"
    }
  ],
  "prefLabel": "Gandhi, Mohandas Karamchand",
  "wikipediaPage": [
    "https://de.wikipedia.org/wiki/Mohandas_Karamchand_Gandhi"
  ],
  "activity": [
    {
      "about": [
        {
          "@language": "en",
          "@value": "Politics"
        },
        {
          "@language": "de",
          "@value": "Politik"
        }
      ],
      "location": [
        {
          "@language": "en",
          "@value": "India"
        },
        {
          "@language": "de",
          "@value": "Indien"
        }
      ]
    }
  ],
  "freeDocCount": 443,
  "totalDocCount": 669,
  "viewUrl": "https://pm20.zbw.eu/dfgview/pe/005823",
  "wdIdentifier": [
    "Q1001"
  ],
  "dateOfBirthAndDeath": "1869-1948",
  "gndIdentifier": "118639145",
  "relatedPerson": [
    {
      "@id": "http://purl.org/pressemappe20/folder/pe/005820"
    }
  ]
}
```

[Anzeige des Dossiers per DFG-Viewer-Link](https://pm20.zbw.eu/dfgview/pe/005823)

### Beispieldaten für ein Firmen-Dossier

```json
{
  "@id": "http://purl.org/pressemappe20/folder/co/041389",
  "@type": [
    "CompanyFolder",
    "Pm20Folder"
  ],
  "hasCountryCode": "DE",
  "organizationType": [
    {
      "@language": "en",
      "@value": "Company"
    },
    {
      "@language": "de",
      "@value": "Unternehmen"
    }
  ],
  "identifier": "co/041389",
  "temporal": "1918,1927,1929-1937,1946-1960",
  "dissolutionDate": "2003",
  "foundingDate": "1837",
  "industry": [
    {
      "@language": "de",
      "@value": "Maschinen- und Anlagenbau"
    },
    {
      "@language": "en",
      "@value": "Machinery Industry and Plant Construction"
    }
  ],
  "location": [
    {
      "@language": "en",
      "@value": "Tegel"
    },
    {
      "@language": "de",
      "@value": "Berlin-Tegel"
    }
  ],
  "member": [
    {
      "name": "Borsig, August",
      "roleName": [
        {
          "@language": "en",
          "@value": "Founder"
        },
        {
          "@language": "de",
          "@value": "Gründer"
        }
      ],
      "url": "http://purl.org/pressemappe20/folder/pe/002215",
      "fromTo": "1837-1854"
    },
    {
      "name": "Borsig, Ernst von",
      "roleName": [
        {
          "@language": "en",
          "@value": "Management board"
        },
        {
          "@language": "de",
          "@value": "Leitung"
        }
      ],
      "url": "http://purl.org/pressemappe20/folder/pe/002216",
      "fromTo": "1894-1931"
    }
  ],
  "subOrganization": [
    {
      "name": "Borsigwerk Aktiengesellschaft in Oberschlesien",
      "url": "http://purl.org/pressemappe20/folder/co/041863"
    }
  ],
  "locatedIn": {
    "@id": "http://sws.geonames.org/2823708"
  },
  "editorialNote": "Film: 494 (hier Material z.T. mit  A10 B 200 signiert !!!) ; Sitzland: Berlin.",
  "notation": "A10 B 34",
  "prefLabel": "A. Borsig",
  "wikipediaPage": [
    "https://de.wikipedia.org/wiki/Borsig_(Unternehmen)"
  ],
  "broaderLocation": [
    {
      "@language": "en",
      "@value": "Berlin"
    },
    {
      "@language": "de",
      "@value": "Berlin"
    }
  ],
  "freeDocCount": 66,
  "fromTo": "1837-2003",
  "includesInstitutionNamed": [
    {
      "@id": "http://zbw.eu/beta/instname/90536",
      "name": "Rheinmetall Borsig AG",
      "note": "1935-1956",
      "gndIdentifier": "64352-X"
    },
    {
      "@id": "http://zbw.eu/beta/instname/90529",
      "name": "Borsig-Werk",
      "gndIdentifier": "35000-X"
    },
    {
      "@id": "http://zbw.eu/beta/instname/90540",
      "name": "Borsig Lokomotiv-Werke GmbH",
      "note": "1931-1944",
      "gndIdentifier": "5327116-6"
    }
  ],
  "reportCount": 0,
  "totalDocCount": 66,
  "viewUrl": "https://pm20.zbw.eu/dfgview/co/041389",
  "wdIdentifier": [
    "Q546769"
  ],
  "gndIdentifier": "6055420-4  ",
  "relatedCorporateBody": [
    {
      "name": "Rheinmetall AG",
      "url": "http://purl.org/pressemappe20/folder/co/019066"
    },
    {
      "name": "Deutsche Babcock & Wilcox Dampfkesselwerke",
      "url": "http://purl.org/pressemappe20/folder/co/002062"
    }
  ],
  "succeedingCorporateBody": [
    {
      "name": "Babcock-Borsig AG",
      "url": "http://purl.org/pressemappe20/folder/co/005946"
    },
    {
      "name": "Deutsche Industrie-Anlagen GmbH",
      "url": "http://purl.org/pressemappe20/folder/co/056039"
    }
  ]
}
```

[Anzeige des Dossiers per DFG-Viewer-Link](https://pm20.zbw.eu/dfgview/co/041389)


## Datenbeschreibung

Felder, die mehrfach auftreten können, werden durchgängig als Array ausgegeben.

Im folgenden werden "Mappe" und "Dossier" synonym verwendet.

Alle __kontrollierten Vokabulare__ sind [hier](https://github.com/zbw/cdv2021-pressemappe20/tree/master/sparql#controlled-vocabularies-parameterized-queries) verlinkt - mit Drill-Down bis auf Mappenebene!


### Daten über die Mappe

Feld | Bezeichnung | Kommentar
-----|-------------|----------
`@id` | Schlüssel | volle URL der Mappe
`@type` | Mappentyp | PersonFolder oder CompanyFolder (+ stets Pm20Folder)
`identifier` | Kurzschlüssel | letzter Teil der URL, in Wikidata verlinkt (PM20 folder ID, P4293)
`temporal` | zeitliche Abdeckung | des gesammelten Materials
`viewUrl` | Mappeninhalt | per DFG-Viewer
`totalDocCount` | Gesamtzahl der Dokumente | der Mappe
`freeDocCount` | Anzahl der online zugänglichen Dokumente | der Mappe
`note` | Notiz | freier Text; bezieht sich z.T. auch auf den Mappengegenstand


### Daten über den Gegenstand der Mappe

Feld | Bezeichnung | Kommentar
-----|-------------|----------
`prefLabel` | Name | der Person oder Firma, zugleich verwendet als Mappentitel
`gndIdentifier` | GND ID | [Gemeinsame Normdatei](https://de.wikipedia.org/wiki/Gemeinsame_Normdatei) der deutschsprachigen Bibliotheken
`wdIdentifier` | Wikidata Item ID (QID) | aus Wikidata abgeleitet. Kann mehrfach auftreten, weil Mappen mehrere Items betreffen können. Umgekehrt kann es zu umfangreichen Themen (z.B. Reichsbahn) mehrere Mappen geben.
`wikipediaPage` | Wikipedia-Seite | aus Wikidata abgeleitet


#### Daten über Personen

Feld | Bezeichnung | Kommentar
-----|-------------|----------
`nationality` | Nationalität | kontrolliertes Vokabular
`hasOccupation` | Tätigkeit | freier Text
`dateOfBirthAndDeath` | Lebensdaten | nicht kontrolliertes Format
`birthDate` | Geburtsjahr | abgeleitet aus `dateOfBirthAndDeath`
`deathDate` | Todesjahr | abgeleitet aus `dateOfBirthAndDeath`
`activity` | Wirkungsbereich |
`activity/about` | sachlicher Wirkungsbereich | kontrolliertes Vokabular
`activity/location` | geografischer Wirkungsbereich | konrtolliertes Vokabular (Länder)
`activity/fromTo` | zeitlicher Wirkungsbereich | nicht kontrolliertes Format


#### Daten über Firmen

Feld | Bezeichnung | Kommentar
-----|-------------|----------
`organizationType` | Art der Organisation | kontrolliertes Vokabular
`altLabel` | andere Namen | schließt manchmal kleinere Tochterfirmen oder Aufkäufe ein
`industry` | Branche | kontrolliertes Vokabular
`location` | Sitz | kontrolliertes Vokabular
`broaderLocation` | übergeordnete Lokation | kontrolliertes Vokabular
`fromTo` | Zeit, während der die Firma bestand | nicht kontrolliertes Format
`foundingDate` | Gründungsjahr | abgeleitet aus `fromTo`
`dissolutionDate` | Jahr der Auflösung | abgeleitet aus `fromTo`
`member` | Beziehung zu einer Personenmappe | Gründer etc.
`member/url` | Schlüssel für die Person |
`member/name` | Name der Person | entsprechend `url`
`member/roleName` | Rolle | Funktion; kontrolliertes Vokabular
`member/fromTo` | Zeitraum | in dem die Person die Funktion eingenommen hat; nicht kontrolliertes Format
`parentOrganization` | übergeordnete Firma/Institution |
`parentOrganization/url` | Schlüssel der Firmenmappe |
`parentOrganization/name` | Name der Firma/Institution |
`subOrganization` | untergeordnete Firma/Institution |
`subOrganization/url` | Schlüssel der Firmenmappe |
`subOrganization/name` | Name der Firma/Institution |
`preceedingCorporateBody` | Vorgängerorganisation |
`preceedingCorporateBody/url` | Schlüssel der Firmenmappe |
`preceedingCorporateBody/name` | Name der Firma/Institution |
`succeedingCorporateBody` | Nachfolgerorganisation |
`succeedingCorporateBody/url` | Schlüssel der Firmenmappe |
`succeedingCorporateBody/name` | Name der Firma/Institution |
`reportCount` | Anzahl Geschäftsberichte | in der Dokumentanzahl enthalten


### Bemerkungen zur Linked-Data-Umsetzung

Die verwendete RDF-Struktur ist noch experimentell und lediglich in
[context.jsonld](./context.jsonld) dokumentiert. Einige der benutzten
Properties (z.B. schema:hasOccupation) sind sehr frei interpretiert, die
eigentlich vorgesehene Verlinkung auf eigenständige Ressourcen fehlt noch.

Dank geht an die KollegInnen von [lobid.org](http://lobid.org), die mit ihren
Überlegungen zu besser nutzbaren Linked Open Data und entsprechenden
Implementierungen viele wertvolle Anregungen gegeben haben.

