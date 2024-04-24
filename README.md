# Snakemake
## Snakemake nedir ve çalışma prensipleri nelerdir ?
### Genel Tanımı ve Amacı:
Snakemake, Python tabanlı bir iş akışı yönetim sistemidir. Bu sistem, veri analizlerinin tekrarlanabilir ve ölçeklenebilir olmasını sağlar. Snakemake, birçok dosyayı içerisinde barındıran bir yapıdır ve hangi dosyaların hangi klasör altında yer almasına yönelik bir rehber de bulunmaktadır.
Snakemake’ın temel amacı, karmaşık süreçli veri analizi ihtiyacı bulunan araştırmacılara yardımcı olmaktır. İş akışı yöneticisi (snakemake) ve iş paketi yöneticisi (conda) örnek uygulamalarda kullanılmış ve Yüksek Başarımlı Hesaplama (YBH) kümesi üzerinde çalışacak şekilde planlanmıştır. Bu sayede, veri analizlerinin daha hızlı ve etkin bir şekilde gerçekleştirilmesi hedeflenir.
Snakemake, ayrıca, iş akışlarının tanımlanmasını ve yönetilmesini kolaylaştırır. Bu, veri analizlerinin daha düzenli ve anlaşılır olmasını sağlar. Ayrıca, Snakemake’ın Python tabanlı olması, kullanıcıların Python dilindeki yeteneklerini ve bilgilerini kullanarak daha karmaşık ve özelleştirilmiş iş akışları oluşturabilmelerine olanak sağlar.
Sonuç olarak, Snakemake, veri analizlerinin daha etkin, hızlı ve düzenli bir şekilde gerçekleştirilmesini sağlayan bir araçtır. Bu araç, özellikle büyük veri setleri ile çalışan araştırmacılar için oldukça yararlıdır.
### Çalışma Prensipleri ve Python:
Snakemake, iş akışlarını tanımlamak ve yönetmek için Python tabanlı bir dil kullanır.
#### Çalışma Prensipleri
##### Kurallar: 
Snakemake, iş akışlarını tanımlamak için kurallar kullanır. Her kural, bir veya daha fazla çıktı dosyası oluşturmak için gerekli olan girdi dosyalarını ve uygulanacak komutları belirtir.
##### Bağımlılıklar: 
Snakemake, kurallar arasındaki bağımlılıkları otomatik olarak çözer. Bu, bir kuralın çıktılarının başka bir kuralın girdileri olduğu durumlarda gerçekleşir.
##### Paralellik: 
Snakemake, birden çok kuralı aynı anda çalıştırabilir. Bu, özellikle büyük veri setleri ile çalışırken zaman kazandırır.
##### Esneklik: 
Snakemake, iş akışlarını özelleştirmek için Python dilinin tüm özelliklerini kullanabilir. Bu, karmaşık iş akışlarını tanımlamayı ve yönetmeyi kolaylaştırır. Python Tabanlı Dilin Kullanımı Snakemake, iş akışlarını tanımlamak için Python tabanlı bir dil kullanır. Bu dil, Python dilinin tüm özelliklerini destekler, bu da iş akışlarını özelleştirmeyi ve karmaşık iş akışlarını tanımlamayı kolaylaştırır. 

### İş Akışı Yönetimi:
Snakefile adı verilen bir dosya üzerinden gerçekleştirilir. Bu dosya, iş akışınızı tanımlayan kuralların bir koleksiyonunu içerir. Her kural, belirli bir görevi temsil eder ve bu görevin girdileri, çıktıları ve nasıl gerçekleştirileceği hakkında bilgi içerir.
Snakemake, bu Snakefile ‘ı okur ve belirtilen kuralları ve bağımlılıkları analiz eder. Ardından, belirtilen çıktı dosyalarını oluşturmak için gereken kuralları otomatik olarak belirler ve çalıştırır. Bu süreç, iş akışının otomatik olarak yönetilmesini sağlar.
Ayrıca, Snakemake iş akışlarını ölçeklendirilebilir ve birden çok işlemci çekirdeğinde paralel olarak çalışabilir. Bu, büyük veri setleri ile çalışırken zaman kazandırabilir.
Snakemake, iş akışının her adımını otomatik olarak izler ve hataları rapor eder. Bu, iş akışının düzgün bir şekilde çalıştığından emin olunmasını sağlar. 

### Yüksek Başarımlı Hesaplama Kümesi Üzerinde Çalışması:
Snakemake, Yüksek Başarımlı Hesaplama (YBH) kümeleri üzerinde çalışacak şekilde tasarlanmıştır. Bu, Snakemake’ın büyük veri setleri üzerinde karmaşık analizler gerçekleştirebileceği anlamına gelir.
Snakemake, YBH kümelerinde iş akışlarını yönetmek için bir dizi özellik sunar. İşte bazıları:
Ölçeklenebilirlik: Snakemake, iş akışlarınızı ölçeklendirebilir ve birden çok işlemci çekirdeğinde paralel olarak çalışabilir. Bu, büyük veri setleri ile çalışırken zaman kazandırabilir.
İş Yönetimi: Snakemake, işlerinizi YBH kümesine göndermenizi, durumunu takip etmenizi ve sonuçlarını almanızı sağlar.
Bağımlılık Yönetimi: Snakemake, bir işte ardışık gelen (bağımlılığı olan) pek çok hesaplamanın yönetilmesini sağlar. Bu, iş dosyasının nasıl hazırlanacağı ve karşılaşılan problemlerin neler olduğunu gösterir.
Entegrasyon: Snakemake, iş paketi yöneticisi (conda) ile entegre olarak çalışabilir. Bu, iş akışınızda gereken tüm yazılımların ve kütüphanelerin otomatik olarak yüklenmesini sağlar.
Bu özellikler, Snakemake’ın YBH kümelerinde etkin bir şekilde çalışmasını sağlar. Bu, büyük ölçekli veri analizlerinin hızlı ve etkin bir şekilde gerçekleştirilmesini sağlar.
### Conda ile Entegrasyon:
Snakemake, iş paketi yöneticisi olan Conda ile entegre bir şekilde çalışabilir. Bu entegrasyon, iş akışınızda gereken tüm yazılımların ve kütüphanelerin otomatik olarak yüklenmesini sağlar.
Snakemake, Snakefile içerisinde her bir kural altında conda değişkeni ile .yaml dosyası verilerek iş akışında ki her bir görev için ayrı ortamları tanımlamaya olanak sağlar. Bu, her bir görevin gerektirdiği yazılımların ve kütüphanelerin otomatik olarak yüklenmesini ve yönetilmesini sağlar.
Ayrıca, Snakemake’in 6.14.0 sürümünden itibaren, mevcut bir Conda ortamını kullanma özelliği de mevcuttur.

### Kullanım Alanları ve Avantajları:
#### Kullanım Alanları
##### Veri Analizi: 
Snakemake, veri analizi görevlerini otomatikleştirmek için sıklıkla kullanılır. Bu, genellikle büyük veri setleri ile çalışırken zaman kazandırır.
##### Biyoinformatik: 
Snakemake, biyoinformatik alanında sıklıkla kullanılır. Örneğin, gen dizileme verilerinin analizi gibi karmaşık iş akışları için kullanılabilir.
##### Yüksek Başarımlı Hesaplama (YBH): 
Snakemake, YBH kümelerinde iş akışlarını yönetmek için kullanılır. Bu, büyük ölçekli veri analizlerinin hızlı ve etkin bir şekilde gerçekleştirilmesini sağlar.
##### Avantajları
##### Ölçeklenebilirlik: 
Snakemake, iş akışlarınızı ölçeklendirebilir ve birden çok işlemci çekirdeğinde paralel olarak çalışabilir. Bu, büyük veri setleri ile çalışırken zaman kazandırır.
##### Otomatik Bağımlılık Çözümleme: 
Snakemake, kurallar arasındaki bağımlılıkları otomatik olarak çözer. Bu, iş akışınızın düzgün bir şekilde çalışmasını sağlar.
##### Esneklik: 
Snakemake, iş akışlarını özelleştirmek için Python dilinin tüm özelliklerini kullanabilir. Bu, karmaşık iş akışlarını tanımlamayı ve yönetmeyi kolaylaştırır.
##### Entegrasyon: 
Snakemake, iş paketi yöneticisi (conda) ile entegre olarak çalışabilir. Bu, iş akışınızda gereken tüm yazılımların ve kütüphanelerin otomatik olarak yüklenmesini sağlar.

# Conda ile Snakemake Kurulumu:

Snakemake aracını kurmak için 'Conda' kullanıyorum. [Conda nedir ve nasıl kullanılır ?](https://github.com/HalitKemalAydin/Conda_Guide)

### Ortam Oluşturma:
Snakemake'i kurmak için öncelikle yeni ortam oluşturuyorum.

```
conda create -n snakemake
```

Ardından oluşturduğum ortama geçiyorum.

```
conda activate snakemake
```
### Snakemake kurulumu:
Şimdi 'Conda' kullanarak snakemake'i kuruyorum.

```
conda install -c bioconda snakemake
```
Snakemake'i kurduktan sonra örnek bir iş hattı oluşturacağım. Bu iş hattında 'fastqc' aracını kullanacağım için onu da kuruyorum.

```
conda install -c bioconda fastqc
```
### Snakefile Oluşturma ve Düzenleme:
İş hattı -pipeline- oluşturmak ve çalıştırmak için 'Snakefile' dosyası oluşturuyorum. 

```
touch Snakefile
```
Oluşturduğum boş Snakefile dosyasını düzenlemek için;

```
nano Snakefile
```
### İş Hattı -Pipeline-
İş hattı oluşturmamız için bir kural tanımlamamız gerekiyor, tanımlama; 'rule', 'input', 'output', 'shell' gibi komutlar ile yapılır.
###### rule > kural
###### input > girdi
###### output > çıktı
###### shell > işlem

Bu iş hattında girdi olarak 'data' adlı dizin içerisinde bulunan 'fastq' uzantılı dosyaları kullanacağım. Kuralımı tanımlarken spesifik isim yerine uzantısına göre almasını istediğim için '{}' kullanıyorum.
Çıktı için de aynı şekilde '{}' kullanıyorum. (Burada '{}' parantezin içinde ne yazdığı önemli değil ama tümünün aynı olması gereklidir.)
Fastqc aracının çıktılarının uzantısı 'html' ve 'zip' olur, bu yüzden 'html=' ve 'zip=' olarak çıktıda belirtiyorum.
Shell için kullanacağım işlemi belirtiyorum.

```
rule fastqc:
    input: 
        "data/{sample}.fastq"
    output:
        html="results/{sample}.html",
        zip="results/{sample}.zip"
    shell:
        "fastqc {input} --outdir results"
```
Snakefile'ı yazdıktan sonra kaydediyorum. 
İş hattını çalıştırmak için "snakemake" komutu kullanılır. Ancak bu iş hattında snakemake'in oluşturması gereken hedefi belirtmemiz gerekiyor. Hedef olarak çıktı istenilen çıktı dosyası veya dosyaları olmalıdır.
Ben de 'data' dizini içinde bulunan dosyalardan kullanmak istediğimi çıktı olarak belirtiyorum. 

Kodu çalıştırmak için;

```
snakemake results/ERR4082748_1.html
```

# Hizalama İş Hattı / Sequence Pipeline

### 1. Adım: Kalite Kontrol "Fastqc"
İlk aşamada fasta dosyalarımızın kalite kontrolünü gerçekleştiriyorum.

```
rule fastqc:
    input: 
        "data/raw/{sample}_1.fastq.gz",
        "data/raw/{sample}_2.fastq.gz"
    output:
        "results/fastqc-raw/{sample}_1.html",
        "results/fastqc-raw/{sample}_1.zip",
        "results/fastqc-raw/{sample}_2.html",
        "results/fastqc-raw/{sample}_2.zip"
    shell:
        "fastqc {input} --outdir results/fastqc-raw"

```
Kodu çalıştırmak için;

```
snakemake results/fastqc-raw/ERR4082748_1.html
```

### 2.Adım: Adaptör Kesimi ve Filtreleme "Cutadapt"
Bu aşamada ise kontrol ettiğimiz fasta dosyalarını filtreleyip adaptörleri kesiyorum.

```
rule cutadapt:
    input:
        "data/raw/{sample}_1.fastq.gz",
        "data/raw/{sample}_2.fastq.gz"
    output:
        R1="results/processed/{sample}_1.fastq.gz",
        R2="results/processed/{sample}_2.fastq.gz"
    threads: 4
    shell:
        "cutadapt -q 20 -m 10 --trim-n -Z -j {threads} -a AGATCGGAAGAG -A AGATCGGAAGAG -o {output.R1} -p {output.R2} {input}"
```
Kodu çalıştırmak için;

```
snakemake results/processed/ERR4082748_1.fastq.gz
```

### 3.Adım: Kesim Sonrası Kalite Kontrol "Fastqc"
Bu aşamada filtreleme ve kesimden sonra fasta dosyalarımızın son halinin kalite kontrolünü yapıyorum.

```
rule fastqc_after_trim:
    input: 
        "results/processed/{sample}_1.fastq.gz",
        "results/processed/{sample}_2.fastq.gz"
    output:
        "results/processed/{sample}_1.html",
        "results/processed/{sample}_1.zip",
        "results/processed/{sample}_2.html",
        "results/processed/{sample}_2.zip"
    shell:
        "fastqc {input} --outdir results/processed/"
```
Kodu çalıştırmak için;

```
snakemake results/processed/ERR4082748_1.html
```

### 4.Adım: Referans Genom ile Hizalama "BWA"
#### A) Referans İndeksleme:
Öncelikle hizalamayı gerçekleştirebilmek için referans genomu indeksliyorum.

```
rule bwa_index:
  input:
    "data/ref/ornek_referans_genom.fna"
  output:
    "data/ref/ornek_referans_genom.fna.bwt"
  shell:
    "bwa index {input}"
```
Kodu çalıştırmak için;

```
snakemake data/ref/ornek_referans_genom.fna.bwt
```

#### B) SAI Dosyalarını Hazırlama:  
Bu aşamada filtrelediğimiz ve kesim yaptığımız fasta dosyalarını, indekslenmiş referans genom ile hizalamak için "sai" dosyalarını oluşturuyorum.

```
rule bwa_aln:
  input:
    ref= "data/ref/ornek_referans_genom.fna",
    fastq1= "results/processed/{sample}_1.fastq.gz",
    fastq2= "results/processed/{sample}_2.fastq.gz"
  output:
    sai1= "results/alignment/bwa/{sample}_1_p.sai",
    sai2= "results/alignment/bwa/{sample}_2_p.sai"
  threads: 4
  shell:
    """
    bwa aln -t {threads} {input.ref} {input.fastq1} > {output.sai1}
    bwa aln -t {threads} {input.ref} {input.fastq2} > {output.sai2}
    """
```
Kodu çalıştırmak için;

```
snakemake results/alignment/bwa/ERR4082748_1_p.sai
```

#### C) BAM Oluşturma:
Sonra referans genom, ileri geri okumalar ve sai dosyalarını kullanarak hizalama sonucunu BAM çıktısı olarak çıkarıyorum.

```
rule bwa_sampe:
    input:
        ref= "data/ref/ornek_referans_genom.fna",
        sai1= "results/alignment/bwa/{sample}_1_p.sai",
        sai2= "results/alignment/bwa/{sample}_2_p.sai",
        fastq1= "results/processed/{sample}_1.fastq.gz",
        fastq2= "results/processed/{sample}_2.fastq.gz"
    output:
        "results/alignment/bwa/{sample}.bam"
    threads: 4
    shell:
        """
        bwa sampe {input.ref} {input.sai1} {input.sai2} {input.fastq1} {input.fastq2} > {output}
        """
```
Kodu çalıştırmak için;

```
snakemake results/alignment/bwa/ERR4082748.bam
```

#### D) BAM Sıralama:
BAM çıktısını varyant çağrısı için sıralıyorum.

```
rule samtools_sort:
    input:
        "results/alignment/bwa/{sample}.bam"
    output:
        "results/alignment/bwa/{sample}.sorted.bam"
    shell:
        "samtools sort {input} -o {output}"
```
Kodu çalıştırmak için;

```
snakemake results/alignment/bwa/ERR4082748.sorted.bam
```

#### E) BAM SAM Dönüşümü:
BAM dosyasını inceleyebilmek için SAM dosyasına çeviriyorum.

```
rule samtools_view:
    input:
        "results/alignment/bwa/{sample}.sorted.bam"
    output:
        "results/alignment/bwa/{sample}.sam"
    shell:
        "samtools view -h {input} > {output}"
```
Kodu çalıştırmak için;

```
snakemake results/alignment/bwa/ERR4082748.sam
```

### Varyant Çağırma:
Sıralanan BAM dosyası ile varyant çağırıyorum.

```
rule variant_calling:
    input:
        "results/alignment/bwa/{sample}.sorted.bam"
    output:
        "results/variants/{sample}.vcf"
    shell:
        "samtools mpileup -uf data/ref/ornek_referans_genom.fna {input} | bcftools call -cv - > {output}"
```
Kodu çalıştırmak için;

```
snakemake results/variants/ERR4082748.vcf
```
# Bu işlemlerimin hepsine "wildcard" atıyorum;

```
PREPROCESS=["results/fastqc-raw/ERR4082748_1.html", "results/fastqc-raw/ERR4082748_2.html", "results/fastqc-raw/ERR4082748_1.zip", "results/fastqc-raw/ERR4082748_2.zip"]

CUTADAPT=["results/processed/ERR4082748_1.fastq.gz","results/processed/ERR4082748_2.fastq.gz"]

AFTER_CUTADAPT=["results/processed/ERR4082748_1.html", "results/processed/ERR4082748_2.html", "results/processed/ERR4082748_1.zip", "results/processed/ERR4082748_2.zip"]

INDEX=["data/ref/ornek_referans_genom.fna.bwt"]

SAI=["results/alignment/bwa/ERR4082748_1_p.sai", "results/alignment/bwa/ERR4082748_2_p.sai"]

SAMPE=["results/alignment/bwa/ERR4082748.bam"]

SORT=["results/alignment/bwa/ERR4082748.sorted.bam"]

VIEW=["results/alignment/bwa/ERR4082748.sam"]

VARIANT=["results/variants/ERR4082748.vcf"]

rule all:
	input: 
           PREPROCESS,
           CUTADAPT,
           AFTER_CUTADAPT,
           INDEX,
           SAI,
           SAMPE,
           SORT,
           VIEW,
           VARIANT
rule preprocess:
    input: PREPROCESS

rule process:
	input: CUTADAPT

rule after_cutadapt:
	input: AFTER_CUTADAPT

rule index:
    input: INDEX

rule sai:
	input: SAI

rule sampe:
    input: SAMPE

rule sort:
    input: SORT

rule view:
    input: VIEW

rule variant:
    input: VARIANT
```

Bu sayede pipeline'ı çalıştırırken wildcardları kullanabileceğim.

Örnek olarak;

```
snakemake variant
```
