# Changes

## Dataset version5

- Add `relatedPerson`, `isPartOf`, `hasPart`
- Add `hasCountryCode`
- Add `locatedIn` (linking to Geonames)
- Add `relatedCorporateBody`
- Add `includesInstitutionNamed`
- Add `notation`
- Add `editorialNote`
- Fix wd:Identifier

## Dataset version4 (preliminary)

- Referece CDV 2021 SH

## _Moved to new repository cdv2021-pressemappe20_

## Dataset version3

- Extend dataset to more than 7400 organizations
- Add `altLabel` for organizations
- Add `reportCount` (business reports)
- During build, put all data and documentation into one zip file for easier download

## Dataset version2

- Fix accidental comment line in .jsonld file
- Remove accidental restriction to folders with Wikidata IDs
- Add `member` for roles of persons in regard to organizations
- Add `activity` for field and country of the activities of a person
- Add `preceedingCorporateBody`, `succeedingCorporateBody`, `parentOrganization`, `subOrganization` for organization relations
- Add `examples.jsonld` file
- Add `broaderLocation` for the seat of an organization
- Add sparql directory to Github repository
- Add queries/lists for all controlled vocabularies

