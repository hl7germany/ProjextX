# Überblick

Diese Spezifikation definiert insgesamt sechs Akteure für den Austausch von FHIR‑basierten Daten und Ereignissen.  
Sie gliedern sich in drei Kontexte:

- **ISiK (Informationssysteme im Krankenhaus)**  
- **TI‑Common (Telematikinfrastruktur‑übergreifende Nutzung)**  
- **KBV‑Kontext (Vertragsärztliche Versorgung)**  

Für jeden dieser Kontexte wird ein **Creator‑Akteur** (bereitstellend) und ein **Consumer‑Akteur** (verarbeitend) definiert.

Die beschriebenen Akteure orientieren sich an der Art und Weise, wie Verpflichtungen („Obligations“) innerhalb dieses Leitfadens festgelegt werden.  
Die Rollenbeschreibungen dienen der einheitlichen Definition von Erwartungen, Aufgaben und Verantwortlichkeiten bei der Erzeugung und Nutzung von FHIR‑konformen Inhalten.

---

# Beziehung zu Verpflichtungen („Obligations“)

Verpflichtungen („[Obligations](https://hl7.org/fhir/extensions/StructureDefinition-obligation.html)“) legen fest, welche Anforderungen ein Akteur erfüllen muss, wenn er Inhalte **erzeugt** oder **verarbeitet**.

- Verpflichtungen werden über die FHIR‑Erweiterung **„Obligations“** beschrieben.  
- Da diese Spezifikation auf **FHIR R4** basiert, wird die entsprechende Erweiterung aus **FHIR R5** zurückportiert.  
- Die Codes für Verpflichtungen stammen aus dem **[ValueSet „Obligation Codes“](https://hl7.org/fhir/extensions/ValueSet-obligation.html)**.  
- Es gilt der Grundsatz:  
  **Daten dürfen niemals in einer Weise erzeugt oder verarbeitet werden, die mit geltenden gesetzlichen oder regulatorischen Vorgaben unvereinbar ist.**

---

# Akteure im Überblick

Es werden die folgenden sechs Rollen unterschieden:

1. **Creator (ISiK)**  
2. **Consumer (ISiK)**  
3. **Creator (TI‑Common)**  
4. **Consumer (TI‑Common)**  
5. **Creator (KBV)**  
6. **Consumer (KBV)**

Die folgenden Abschnitte beschreiben diese Akteure im Detail.

---

# Akteursrollen im ISiK‑Kontext

## Creator (ISiK)

Ein **Creator (ISiK)** erzeugt FHIR‑Ressourcen oder Bundles, die den ISiK‑Profilen und Spezifikationen entsprechen, und stellt sie anderen Systemen zur Verfügung.

**Zweck:**  
Repräsentiert ein Krankenhausinformationssystem (KIS) oder ein anderes klinisches System, das konforme ISiK‑Artefakte bereitstellt.

**Erwartungen:**  
Erfüllt ausschließlich die Verpflichtungen, die den ISiK‑Profilen zugeordnet sind, zu denen Konformität erklärt wurde.

---

## Consumer (ISiK)

Ein **Consumer (ISiK)** ruft ISiK‑konforme Daten ab oder empfängt sie (z. B. über REST, Messaging oder Subscriptions), um sie klinisch oder administrativ weiterzuverarbeiten.

**Zweck:**  
FHIR‑Client oder anderes klinisches System, das Daten aus dem ISiK‑Umfeld konsumiert.

**Erwartungen:**  
Erfüllt die Verpflichtungen der ISiK‑Profile, zu denen das System Konformität erklärt.

---

# Akteursrollen im TI‑Common‑Kontext

## Creator (TI‑Common)

Der **Creator (TI‑Common)** erzeugt Daten oder Ereignisse entsprechend TI‑übergreifenden Profilen und macht sie für andere Systeme der Telematikinfrastruktur verfügbar.

**Zweck:**  
Repräsentiert Dienste innerhalb der TI (z. B. Fachdienste, Primärsysteme), die konforme TI‑Common‑Artefakte bereitstellen.

**Erwartungen:**  
Erfüllt Verpflichtungen der TI‑Common‑Profile, zu denen Konformität erklärt wurde.

---

## Consumer (TI‑Common)

Ein **Consumer (TI‑Common)** empfängt TI‑Common‑konforme FHIR‑Inhalte, ruft sie ab oder verarbeitet sie weiter.

**Zweck:**  
Kontextspezifisches System der TI, das auf FHIR‑basierte Datenaustauschmuster zugreift.

**Erwartungen:**  
Erfüllt ausschließlich die Verpflichtungen der TI‑Common‑Profile, zu denen Konformität besteht.

---

# Akteursrollen im KBV‑Kontext

## Creator (KBV)

Ein **Creator (KBV)** erzeugt FHIR‑Daten entsprechend den KBV‑Spezifikationen für die vertragsärztliche Versorgung.

**Zweck:**  
Praxisverwaltungssystem (PVS) oder vergleichbares System, das KBV‑konforme Artefakte erzeugt.

**Erwartungen:**  
Erfüllt die Verpflichtungen der jeweiligen KBV‑Profile.

---

## Consumer (KBV)

Ein **Consumer (KBV)** ruft KBV‑konforme Inhalte ab oder empfängt sie zur Weiterverarbeitung im vertragsärztlichen Kontext.

**Zweck:**  
FHIR‑Client oder anderes PVS‑nahes System, das Daten aus KBV‑Spezifikationen verarbeitet.

**Erwartungen:**  
Muss die Verpflichtungen jener KBV‑Profile erfüllen, zu denen Konformität erklärt wurde.

---

# Status und Darstellung

Die Rollenbeschreibungen dienen der narrativen Dokumentation und sind nicht selbst Gegenstand eigener Profile.  
Da ActorDefinition eine FHIR‑R5‑Ressource ist, kann die Darstellung in R4‑basierten Publikationsumgebungen eingeschränkt sein.  

**Die narrative Beschreibung in diesem Dokument ist daher maßgeblich.**
``