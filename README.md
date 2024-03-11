# Snakemake
## Snakemake nedir ve çalışma prensipleri nelerdir ?
#### Genel Tanımı ve Amacı:
Snakemake, Python tabanlı bir iş akışı yönetim sistemidir. Bu sistem, veri analizlerinin tekrarlanabilir ve ölçeklenebilir olmasını sağlar. Snakemake, birçok dosyayı içerisinde barındıran bir yapıdır ve hangi dosyaların hangi klasör altında yer almasına yönelik bir rehber de bulunmaktadır.
Snakemake’ın temel amacı, karmaşık süreçli veri analizi ihtiyacı bulunan araştırmacılara yardımcı olmaktır. İş akışı yöneticisi (snakemake) ve iş paketi yöneticisi (conda) örnek uygulamalarda kullanılmış ve Yüksek Başarımlı Hesaplama (YBH) kümesi üzerinde çalışacak şekilde planlanmıştır. Bu sayede, veri analizlerinin daha hızlı ve etkin bir şekilde gerçekleştirilmesi hedeflenir.
Snakemake, ayrıca, iş akışlarının tanımlanmasını ve yönetilmesini kolaylaştırır. Bu, veri analizlerinin daha düzenli ve anlaşılır olmasını sağlar. Ayrıca, Snakemake’ın Python tabanlı olması, kullanıcıların Python dilindeki yeteneklerini ve bilgilerini kullanarak daha karmaşık ve özelleştirilmiş iş akışları oluşturabilmelerine olanak sağlar.
Sonuç olarak, Snakemake, veri analizlerinin daha etkin, hızlı ve düzenli bir şekilde gerçekleştirilmesini sağlayan bir araçtır. Bu araç, özellikle büyük veri setleri ile çalışan araştırmacılar için oldukça yararlıdır.
#### Çalışma Prensipleri ve Python:
Snakemake, iş akışlarını tanımlamak ve yönetmek için Python tabanlı bir dil kullanır.
##### Çalışma Prensipleri
Kurallar: Snakemake, iş akışlarını tanımlamak için kurallar kullanır. Her kural, bir veya daha fazla çıktı dosyası oluşturmak için gerekli olan girdi dosyalarını ve uygulanacak komutları belirtir.
Bağımlılıklar: Snakemake, kurallar arasındaki bağımlılıkları otomatik olarak çözer. Bu, bir kuralın çıktılarının başka bir kuralın girdileri olduğu durumlarda gerçekleşir.
Paralellik: Snakemake, birden çok kuralı aynı anda çalıştırabilir. Bu, özellikle büyük veri setleri ile çalışırken zaman kazandırır.
Esneklik: Snakemake, iş akışlarını özelleştirmek için Python dilinin tüm özelliklerini kullanabilir. Bu, karmaşık iş akışlarını tanımlamayı ve yönetmeyi kolaylaştırır.
Python Tabanlı Dilin Kullanımı Snakemake, iş akışlarını tanımlamak için Python tabanlı bir dil kullanır. Bu dil, Python dilinin tüm özelliklerini destekler, bu da iş akışlarını özelleştirmeyi ve karmaşık iş akışlarını tanımlamayı kolaylaştırır. 


Örnek;
```
rule all:
    input:
        "sonuclar/dosya1.txt",
        "sonuclar/dosya2.txt"

rule ornek_kural:
    input:
        "veri/dosya1.txt"
    output:
        "sonuclar/dosya1.txt"
    shell:
        "cat {input} > {output}"

```
Bu örnekte, ornek_kural adlı bir kural tanımlanmıştır. Bu kural, veri/dosya1.txt dosyasını okur ve içeriğini sonuclar/dosya1.txt dosyasına yazar. all kuralı ise, tüm iş akışının tamamlanmasını sağlar ve belirtilen tüm dosyaların oluşturulmasını bekler.
#### İş Akışı Yönetimi:
Snakefile adı verilen bir dosya üzerinden gerçekleştirilir. Bu dosya, iş akışınızı tanımlayan kuralların bir koleksiyonunu içerir. Her kural, belirli bir görevi temsil eder ve bu görevin girdileri, çıktıları ve nasıl gerçekleştirileceği hakkında bilgi içerir.
Snakemake, bu Snakefile ‘ı okur ve belirtilen kuralları ve bağımlılıkları analiz eder. Ardından, belirtilen çıktı dosyalarını oluşturmak için gereken kuralları otomatik olarak belirler ve çalıştırır. Bu süreç, iş akışının otomatik olarak yönetilmesini sağlar.
Ayrıca, Snakemake iş akışlarını ölçeklendirilebilir ve birden çok işlemci çekirdeğinde paralel olarak çalışabilir. Bu, büyük veri setleri ile çalışırken zaman kazandırabilir.
Snakemake, iş akışının her adımını otomatik olarak izler ve hataları rapor eder. Bu, iş akışının düzgün bir şekilde çalıştığından emin olunmasını sağlar. 

#### Yüksek Başarımlı Hesaplama Kümesi Üzerinde Çalışması:
Snakemake, Yüksek Başarımlı Hesaplama (YBH) kümeleri üzerinde çalışacak şekilde tasarlanmıştır. Bu, Snakemake’ın büyük veri setleri üzerinde karmaşık analizler gerçekleştirebileceği anlamına gelir.
Snakemake, YBH kümelerinde iş akışlarını yönetmek için bir dizi özellik sunar. İşte bazıları:
Ölçeklenebilirlik: Snakemake, iş akışlarınızı ölçeklendirebilir ve birden çok işlemci çekirdeğinde paralel olarak çalışabilir. Bu, büyük veri setleri ile çalışırken zaman kazandırabilir.
İş Yönetimi: Snakemake, işlerinizi YBH kümesine göndermenizi, durumunu takip etmenizi ve sonuçlarını almanızı sağlar.
Bağımlılık Yönetimi: Snakemake, bir işte ardışık gelen (bağımlılığı olan) pek çok hesaplamanın yönetilmesini sağlar. Bu, iş dosyasının nasıl hazırlanacağı ve karşılaşılan problemlerin neler olduğunu gösterir.
Entegrasyon: Snakemake, iş paketi yöneticisi (conda) ile entegre olarak çalışabilir. Bu, iş akışınızda gereken tüm yazılımların ve kütüphanelerin otomatik olarak yüklenmesini sağlar.
Bu özellikler, Snakemake’ın YBH kümelerinde etkin bir şekilde çalışmasını sağlar. Bu, büyük ölçekli veri analizlerinin hızlı ve etkin bir şekilde gerçekleştirilmesini sağlar.
#### Conda ile Entegrasyon:
Snakemake, iş paketi yöneticisi olan Conda ile entegre bir şekilde çalışabilir. Bu entegrasyon, iş akışınızda gereken tüm yazılımların ve kütüphanelerin otomatik olarak yüklenmesini sağlar.
Snakemake, Snakefile içerisinde her bir kural altında conda değişkeni ile .yaml dosyası verilerek iş akışında ki her bir görev için ayrı ortamları tanımlamaya olanak sağlar. Bu, her bir görevin gerektirdiği yazılımların ve kütüphanelerin otomatik olarak yüklenmesini ve yönetilmesini sağlar.
Ayrıca, Snakemake’in 6.14.0 sürümünden itibaren, mevcut bir Conda ortamını kullanma özelliği de mevcuttur. Bu özellik, kuralların conda direktifine ortamın adını ekleyerek ve snakemake

```
--use-conda 
```
komutunu kullanarak etkinleştirilebilir.
Kullanım Alanları ve Avantajları:
Kullanım Alanları
Veri Analizi: Snakemake, veri analizi görevlerini otomatikleştirmek için sıklıkla kullanılır. Bu, genellikle büyük veri setleri ile çalışırken zaman kazandırır.
Biyoinformatik: Snakemake, biyoinformatik alanında sıklıkla kullanılır. Örneğin, gen dizileme verilerinin analizi gibi karmaşık iş akışları için kullanılabilir.
Yüksek Başarımlı Hesaplama (YBH): Snakemake, YBH kümelerinde iş akışlarını yönetmek için kullanılır. Bu, büyük ölçekli veri analizlerinin hızlı ve etkin bir şekilde gerçekleştirilmesini sağlar.
Avantajları
Ölçeklenebilirlik: Snakemake, iş akışlarınızı ölçeklendirebilir ve birden çok işlemci çekirdeğinde paralel olarak çalışabilir. Bu, büyük veri setleri ile çalışırken zaman kazandırır.
Otomatik Bağımlılık Çözümleme: Snakemake, kurallar arasındaki bağımlılıkları otomatik olarak çözer. Bu, iş akışınızın düzgün bir şekilde çalışmasını sağlar.
Esneklik: Snakemake, iş akışlarını özelleştirmek için Python dilinin tüm özelliklerini kullanabilir. Bu, karmaşık iş akışlarını tanımlamayı ve yönetmeyi kolaylaştırır.
Entegrasyon: Snakemake, iş paketi yöneticisi (conda) ile entegre olarak çalışabilir. Bu, iş akışınızda gereken tüm yazılımların ve kütüphanelerin otomatik olarak yüklenmesini sağlar.
