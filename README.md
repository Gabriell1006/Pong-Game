# Sistem pentru identificarea unor filtre audio necunoscute

## Descriere generală

Acest proiect constă în realizarea unei aplicații software MATLAB pentru identificarea filtrelor digitale audio necunoscute. Sistemul se bazează pe un algoritm adaptiv – **Normalised Least Mean Square (NLMS)** – în configurația de **identificare de sistem**.

Aplicația va permite:
- Generarea unui semnal de tip zgomot.
- Încărcarea semnalelor de intrare și ieșire ale unui filtru necunoscut.
- Identificarea filtrului utilizând NLMS.
- Afișarea răspunsului la impuls, a modulului funcției de transfer și a erorii de estimare.
- Exportul filtrului identificat pentru utilizări ulterioare.

## Beneficii

Această aplicație oferă o soluție practică pentru identificarea filtrelor audio necunoscute. De exemplu, unele aplicații precum **Fast Equaliser** creează filtre audio eficiente, dar nu permit exportul acestora. Aplicația noastră va permite **reconstrucția și salvarea acestor filtre** pentru utilizări viitoare, facilitând astfel lucrul în ingineria sunetului și procesarea audio.

## Tehnologii utilizate

- [MATLAB](https://www.mathworks.com/)
- MATLAB AppDesigner
- Signal Processing Toolbox

## Plan de proiect

### Etapa 1: Până la vacanța de iarnă

- Studierea algoritmului NLMS și a conceptului de identificare de sistem.
- Familiarizarea cu AppDesigner pentru dezvoltarea GUI în MATLAB.
- Generarea și analiza semnalelor de tip zgomot.
- Studierea și implementarea diverselor filtre digitale în MATLAB.

### Etapa 2: Până la prezentarea finală

- Implementarea algoritmului NLMS pentru identificarea unui filtru cunoscut.
- Dezvoltarea interfeței grafice (GUI).
- Integrarea funcționalității de control în aplicație (butoane, selecții, afișări).
- Testarea aplicației și optimizarea performanței.

## Structura aplicației

- **Generare semnal de test**: zgomot alb sau alte tipuri de zgomot.
- **Încărcare semnale**: semnal de intrare + semnal de ieșire.
- **Parametri configurabili**: ordinul filtrului, rata de învățare, etc.
- **Rezultate afișate**:
  - Răspunsul la impuls.
  - Modulul funcției de transfer.
  - Graficul erorii în timp.

## Resurse necesare

- MATLAB cu toolbox-uri dedicate procesării semnalului.
- Programe audio pentru testare: 
  - [Reaper](https://www.reaper.fm/)
  - [Fast Equaliser](https://sourceforge.net/projects/fastequalizer/)

## Testare și evaluare

1. **Testare internă în MATLAB**:
   - Se vor genera filtre cunoscute și se va evalua precizia identificării.
2. **Testare externă cu filtre reale**:
   - Se vor folosi aplicații precum Reaper și Fast Equaliser pentru a genera răspunsuri reale și a testa performanța de identificare.

## Referințe

1. [System Identification using LMS algorithm – MATLAB File Exchange](https://www.mathworks.com/matlabcentral/fileexchange/63935-system-identification-using-least-mean-square-lms-algorithm?s_tid=prof_contriblnk)
2. Rusu, A.-G. – **Algoritmi adaptivi cu aplicații în comunicațiile audio și de voce**  
   [Rezumat teză doctorat (PDF)](https://docs.upb.ro/wp-content/uploads/2022/09/REZUMAT-TEZA_Rusu_RO.pdf)
3. Rusu, C. – **Tehnici de procesare a semnalelor audio: Filtrări adaptive**  
   [Prezentare ROXAC 2016 (PDF)](https://sp.utcluj.ro/ROXAC2016/Prezentari_postere/FiltrariAdaptive.pdf)

---
