.class public final Lcom/facebook/i/i;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field private A:Z

.field private B:Lcom/facebook/i/k;

.field private C:Z

.field private D:Lcom/facebook/i/k;

.field private E:Z

.field private F:Lcom/facebook/i/k;

.field private G:Z

.field private H:Ljava/lang/String;

.field private I:Z

.field private J:I

.field private K:Z

.field private L:Ljava/lang/String;

.field private M:Z

.field private N:Ljava/lang/String;

.field private O:Z

.field private P:Ljava/lang/String;

.field private Q:Z

.field private R:Ljava/lang/String;

.field private S:Z

.field private T:Ljava/lang/String;

.field private U:Z

.field private V:Ljava/lang/String;

.field private W:Z

.field private X:Z

.field private Y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/i/h;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/i/h;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:Ljava/lang/String;

.field private ae:Z

.field private af:Z

.field private b:Lcom/facebook/i/k;

.field private c:Z

.field private d:Lcom/facebook/i/k;

.field private e:Z

.field private f:Lcom/facebook/i/k;

.field private g:Z

.field private h:Lcom/facebook/i/k;

.field private i:Z

.field private j:Lcom/facebook/i/k;

.field private k:Z

.field private l:Lcom/facebook/i/k;

.field private m:Z

.field private n:Lcom/facebook/i/k;

.field private o:Z

.field private p:Lcom/facebook/i/k;

.field private q:Z

.field private r:Lcom/facebook/i/k;

.field private s:Z

.field private t:Lcom/facebook/i/k;

.field private u:Z

.field private v:Lcom/facebook/i/k;

.field private w:Z

.field private x:Lcom/facebook/i/k;

.field private y:Z

.field private z:Lcom/facebook/i/k;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object v0, p0, Lcom/facebook/i/i;->b:Lcom/facebook/i/k;

    .line 326
    iput-object v0, p0, Lcom/facebook/i/i;->d:Lcom/facebook/i/k;

    .line 340
    iput-object v0, p0, Lcom/facebook/i/i;->f:Lcom/facebook/i/k;

    .line 354
    iput-object v0, p0, Lcom/facebook/i/i;->h:Lcom/facebook/i/k;

    .line 368
    iput-object v0, p0, Lcom/facebook/i/i;->j:Lcom/facebook/i/k;

    .line 382
    iput-object v0, p0, Lcom/facebook/i/i;->l:Lcom/facebook/i/k;

    .line 396
    iput-object v0, p0, Lcom/facebook/i/i;->n:Lcom/facebook/i/k;

    .line 410
    iput-object v0, p0, Lcom/facebook/i/i;->p:Lcom/facebook/i/k;

    .line 424
    iput-object v0, p0, Lcom/facebook/i/i;->r:Lcom/facebook/i/k;

    .line 438
    iput-object v0, p0, Lcom/facebook/i/i;->t:Lcom/facebook/i/k;

    .line 452
    iput-object v0, p0, Lcom/facebook/i/i;->v:Lcom/facebook/i/k;

    .line 466
    iput-object v0, p0, Lcom/facebook/i/i;->x:Lcom/facebook/i/k;

    .line 480
    iput-object v0, p0, Lcom/facebook/i/i;->z:Lcom/facebook/i/k;

    .line 494
    iput-object v0, p0, Lcom/facebook/i/i;->B:Lcom/facebook/i/k;

    .line 508
    iput-object v0, p0, Lcom/facebook/i/i;->D:Lcom/facebook/i/k;

    .line 522
    iput-object v0, p0, Lcom/facebook/i/i;->F:Lcom/facebook/i/k;

    .line 536
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/i/i;->H:Ljava/lang/String;

    .line 547
    iput v1, p0, Lcom/facebook/i/i;->J:I

    .line 558
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/i/i;->L:Ljava/lang/String;

    .line 569
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/i/i;->N:Ljava/lang/String;

    .line 580
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/i/i;->P:Ljava/lang/String;

    .line 591
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/i/i;->R:Ljava/lang/String;

    .line 602
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/i/i;->T:Ljava/lang/String;

    .line 613
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/i/i;->V:Ljava/lang/String;

    .line 624
    iput-boolean v1, p0, Lcom/facebook/i/i;->X:Z

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/i/i;->Y:Ljava/util/List;

    .line 651
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/i/i;->Z:Ljava/util/List;

    .line 675
    iput-boolean v1, p0, Lcom/facebook/i/i;->ab:Z

    .line 689
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/i/i;->ad:Ljava/lang/String;

    .line 700
    iput-boolean v1, p0, Lcom/facebook/i/i;->af:Z

    .line 294
    return-void
.end method

.method private a(I)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->I:Z

    .line 552
    iput p1, p0, Lcom/facebook/i/i;->J:I

    .line 553
    return-object p0
.end method

.method private a(Lcom/facebook/i/k;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->a:Z

    .line 320
    iput-object p1, p0, Lcom/facebook/i/i;->b:Lcom/facebook/i/k;

    .line 321
    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->G:Z

    .line 541
    iput-object p1, p0, Lcom/facebook/i/i;->H:Ljava/lang/String;

    .line 542
    return-object p0
.end method

.method private a(Z)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->W:Z

    .line 629
    iput-boolean p1, p0, Lcom/facebook/i/i;->X:Z

    .line 630
    return-object p0
.end method

.method private b(Lcom/facebook/i/k;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->c:Z

    .line 334
    iput-object p1, p0, Lcom/facebook/i/i;->d:Lcom/facebook/i/k;

    .line 335
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->K:Z

    .line 563
    iput-object p1, p0, Lcom/facebook/i/i;->L:Ljava/lang/String;

    .line 564
    return-object p0
.end method

.method private b(Z)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 682
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->aa:Z

    .line 683
    iput-boolean p1, p0, Lcom/facebook/i/i;->ab:Z

    .line 684
    return-object p0
.end method

.method private c(Lcom/facebook/i/k;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->e:Z

    .line 348
    iput-object p1, p0, Lcom/facebook/i/i;->f:Lcom/facebook/i/k;

    .line 349
    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->M:Z

    .line 574
    iput-object p1, p0, Lcom/facebook/i/i;->N:Ljava/lang/String;

    .line 575
    return-object p0
.end method

.method private c(Z)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 704
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->ae:Z

    .line 705
    iput-boolean p1, p0, Lcom/facebook/i/i;->af:Z

    .line 706
    return-object p0
.end method

.method private d(Lcom/facebook/i/k;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->g:Z

    .line 362
    iput-object p1, p0, Lcom/facebook/i/i;->h:Lcom/facebook/i/k;

    .line 363
    return-object p0
.end method

.method private d(Ljava/lang/String;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->O:Z

    .line 585
    iput-object p1, p0, Lcom/facebook/i/i;->P:Ljava/lang/String;

    .line 586
    return-object p0
.end method

.method private e(Lcom/facebook/i/k;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->i:Z

    .line 376
    iput-object p1, p0, Lcom/facebook/i/i;->j:Lcom/facebook/i/k;

    .line 377
    return-object p0
.end method

.method private e(Ljava/lang/String;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->Q:Z

    .line 596
    iput-object p1, p0, Lcom/facebook/i/i;->R:Ljava/lang/String;

    .line 597
    return-object p0
.end method

.method private f(Lcom/facebook/i/k;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->k:Z

    .line 390
    iput-object p1, p0, Lcom/facebook/i/i;->l:Lcom/facebook/i/k;

    .line 391
    return-object p0
.end method

.method private f(Ljava/lang/String;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->S:Z

    .line 607
    iput-object p1, p0, Lcom/facebook/i/i;->T:Ljava/lang/String;

    .line 608
    return-object p0
.end method

.method private g(Lcom/facebook/i/k;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->m:Z

    .line 404
    iput-object p1, p0, Lcom/facebook/i/i;->n:Lcom/facebook/i/k;

    .line 405
    return-object p0
.end method

.method private g(Ljava/lang/String;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->U:Z

    .line 618
    iput-object p1, p0, Lcom/facebook/i/i;->V:Ljava/lang/String;

    .line 619
    return-object p0
.end method

.method private h(Lcom/facebook/i/k;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->o:Z

    .line 418
    iput-object p1, p0, Lcom/facebook/i/i;->p:Lcom/facebook/i/k;

    .line 419
    return-object p0
.end method

.method private h(Ljava/lang/String;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->ac:Z

    .line 694
    iput-object p1, p0, Lcom/facebook/i/i;->ad:Ljava/lang/String;

    .line 695
    return-object p0
.end method

.method private i(Lcom/facebook/i/k;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->q:Z

    .line 432
    iput-object p1, p0, Lcom/facebook/i/i;->r:Lcom/facebook/i/k;

    .line 433
    return-object p0
.end method

.method private j(Lcom/facebook/i/k;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->s:Z

    .line 446
    iput-object p1, p0, Lcom/facebook/i/i;->t:Lcom/facebook/i/k;

    .line 447
    return-object p0
.end method

.method private k(Lcom/facebook/i/k;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->u:Z

    .line 460
    iput-object p1, p0, Lcom/facebook/i/i;->v:Lcom/facebook/i/k;

    .line 461
    return-object p0
.end method

.method private l(Lcom/facebook/i/k;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->w:Z

    .line 474
    iput-object p1, p0, Lcom/facebook/i/i;->x:Lcom/facebook/i/k;

    .line 475
    return-object p0
.end method

.method private m(Lcom/facebook/i/k;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->y:Z

    .line 488
    iput-object p1, p0, Lcom/facebook/i/i;->z:Lcom/facebook/i/k;

    .line 489
    return-object p0
.end method

.method private n(Lcom/facebook/i/k;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->A:Z

    .line 502
    iput-object p1, p0, Lcom/facebook/i/i;->B:Lcom/facebook/i/k;

    .line 503
    return-object p0
.end method

.method private o(Lcom/facebook/i/k;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->C:Z

    .line 516
    iput-object p1, p0, Lcom/facebook/i/i;->D:Lcom/facebook/i/k;

    .line 517
    return-object p0
.end method

.method private p(Lcom/facebook/i/k;)Lcom/facebook/i/i;
    .locals 1
    .parameter

    .prologue
    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/i/i;->E:Z

    .line 530
    iput-object p1, p0, Lcom/facebook/i/i;->F:Lcom/facebook/i/k;

    .line 531
    return-object p0
.end method

.method private s()I
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/facebook/i/i;->Y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private t()I
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/facebook/i/i;->Z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Lcom/facebook/i/k;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/facebook/i/i;->b:Lcom/facebook/i/k;

    return-object v0
.end method

.method public final b()Lcom/facebook/i/k;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/facebook/i/i;->d:Lcom/facebook/i/k;

    return-object v0
.end method

.method public final c()Lcom/facebook/i/k;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/facebook/i/i;->f:Lcom/facebook/i/k;

    return-object v0
.end method

.method public final d()Lcom/facebook/i/k;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/facebook/i/i;->h:Lcom/facebook/i/k;

    return-object v0
.end method

.method public final e()Lcom/facebook/i/k;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/facebook/i/i;->j:Lcom/facebook/i/k;

    return-object v0
.end method

.method public final f()Lcom/facebook/i/k;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/facebook/i/i;->l:Lcom/facebook/i/k;

    return-object v0
.end method

.method public final g()Lcom/facebook/i/k;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/facebook/i/i;->n:Lcom/facebook/i/k;

    return-object v0
.end method

.method public final h()Lcom/facebook/i/k;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/facebook/i/i;->p:Lcom/facebook/i/k;

    return-object v0
.end method

.method public final i()Lcom/facebook/i/k;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/facebook/i/i;->r:Lcom/facebook/i/k;

    return-object v0
.end method

.method public final j()Lcom/facebook/i/k;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/facebook/i/i;->t:Lcom/facebook/i/k;

    return-object v0
.end method

.method public final k()Lcom/facebook/i/k;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/facebook/i/i;->x:Lcom/facebook/i/k;

    return-object v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lcom/facebook/i/i;->J:I

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/facebook/i/i;->L:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/facebook/i/i;->T:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/facebook/i/i;->V:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/facebook/i/i;->X:Z

    return v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 690
    iget-boolean v0, p0, Lcom/facebook/i/i;->ac:Z

    return v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/facebook/i/i;->ad:Ljava/lang/String;

    return-object v0
.end method

.method public final readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .parameter "objectInput"

    .prologue
    const/4 v0, 0x0

    .line 829
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 830
    if-eqz v1, :cond_0

    .line 831
    new-instance v1, Lcom/facebook/i/k;

    invoke-direct {v1}, Lcom/facebook/i/k;-><init>()V

    .line 832
    invoke-virtual {v1, p1}, Lcom/facebook/i/k;->readExternal(Ljava/io/ObjectInput;)V

    .line 833
    invoke-direct {p0, v1}, Lcom/facebook/i/i;->a(Lcom/facebook/i/k;)Lcom/facebook/i/i;

    .line 835
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 836
    if-eqz v1, :cond_1

    .line 837
    new-instance v1, Lcom/facebook/i/k;

    invoke-direct {v1}, Lcom/facebook/i/k;-><init>()V

    .line 838
    invoke-virtual {v1, p1}, Lcom/facebook/i/k;->readExternal(Ljava/io/ObjectInput;)V

    .line 839
    invoke-direct {p0, v1}, Lcom/facebook/i/i;->b(Lcom/facebook/i/k;)Lcom/facebook/i/i;

    .line 841
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 842
    if-eqz v1, :cond_2

    .line 843
    new-instance v1, Lcom/facebook/i/k;

    invoke-direct {v1}, Lcom/facebook/i/k;-><init>()V

    .line 844
    invoke-virtual {v1, p1}, Lcom/facebook/i/k;->readExternal(Ljava/io/ObjectInput;)V

    .line 845
    invoke-direct {p0, v1}, Lcom/facebook/i/i;->c(Lcom/facebook/i/k;)Lcom/facebook/i/i;

    .line 847
    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 848
    if-eqz v1, :cond_3

    .line 849
    new-instance v1, Lcom/facebook/i/k;

    invoke-direct {v1}, Lcom/facebook/i/k;-><init>()V

    .line 850
    invoke-virtual {v1, p1}, Lcom/facebook/i/k;->readExternal(Ljava/io/ObjectInput;)V

    .line 851
    invoke-direct {p0, v1}, Lcom/facebook/i/i;->d(Lcom/facebook/i/k;)Lcom/facebook/i/i;

    .line 853
    :cond_3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 854
    if-eqz v1, :cond_4

    .line 855
    new-instance v1, Lcom/facebook/i/k;

    invoke-direct {v1}, Lcom/facebook/i/k;-><init>()V

    .line 856
    invoke-virtual {v1, p1}, Lcom/facebook/i/k;->readExternal(Ljava/io/ObjectInput;)V

    .line 857
    invoke-direct {p0, v1}, Lcom/facebook/i/i;->e(Lcom/facebook/i/k;)Lcom/facebook/i/i;

    .line 859
    :cond_4
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 860
    if-eqz v1, :cond_5

    .line 861
    new-instance v1, Lcom/facebook/i/k;

    invoke-direct {v1}, Lcom/facebook/i/k;-><init>()V

    .line 862
    invoke-virtual {v1, p1}, Lcom/facebook/i/k;->readExternal(Ljava/io/ObjectInput;)V

    .line 863
    invoke-direct {p0, v1}, Lcom/facebook/i/i;->f(Lcom/facebook/i/k;)Lcom/facebook/i/i;

    .line 865
    :cond_5
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 866
    if-eqz v1, :cond_6

    .line 867
    new-instance v1, Lcom/facebook/i/k;

    invoke-direct {v1}, Lcom/facebook/i/k;-><init>()V

    .line 868
    invoke-virtual {v1, p1}, Lcom/facebook/i/k;->readExternal(Ljava/io/ObjectInput;)V

    .line 869
    invoke-direct {p0, v1}, Lcom/facebook/i/i;->g(Lcom/facebook/i/k;)Lcom/facebook/i/i;

    .line 871
    :cond_6
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 872
    if-eqz v1, :cond_7

    .line 873
    new-instance v1, Lcom/facebook/i/k;

    invoke-direct {v1}, Lcom/facebook/i/k;-><init>()V

    .line 874
    invoke-virtual {v1, p1}, Lcom/facebook/i/k;->readExternal(Ljava/io/ObjectInput;)V

    .line 875
    invoke-direct {p0, v1}, Lcom/facebook/i/i;->h(Lcom/facebook/i/k;)Lcom/facebook/i/i;

    .line 877
    :cond_7
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 878
    if-eqz v1, :cond_8

    .line 879
    new-instance v1, Lcom/facebook/i/k;

    invoke-direct {v1}, Lcom/facebook/i/k;-><init>()V

    .line 880
    invoke-virtual {v1, p1}, Lcom/facebook/i/k;->readExternal(Ljava/io/ObjectInput;)V

    .line 881
    invoke-direct {p0, v1}, Lcom/facebook/i/i;->i(Lcom/facebook/i/k;)Lcom/facebook/i/i;

    .line 883
    :cond_8
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 884
    if-eqz v1, :cond_9

    .line 885
    new-instance v1, Lcom/facebook/i/k;

    invoke-direct {v1}, Lcom/facebook/i/k;-><init>()V

    .line 886
    invoke-virtual {v1, p1}, Lcom/facebook/i/k;->readExternal(Ljava/io/ObjectInput;)V

    .line 887
    invoke-direct {p0, v1}, Lcom/facebook/i/i;->j(Lcom/facebook/i/k;)Lcom/facebook/i/i;

    .line 889
    :cond_9
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 890
    if-eqz v1, :cond_a

    .line 891
    new-instance v1, Lcom/facebook/i/k;

    invoke-direct {v1}, Lcom/facebook/i/k;-><init>()V

    .line 892
    invoke-virtual {v1, p1}, Lcom/facebook/i/k;->readExternal(Ljava/io/ObjectInput;)V

    .line 893
    invoke-direct {p0, v1}, Lcom/facebook/i/i;->k(Lcom/facebook/i/k;)Lcom/facebook/i/i;

    .line 895
    :cond_a
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 896
    if-eqz v1, :cond_b

    .line 897
    new-instance v1, Lcom/facebook/i/k;

    invoke-direct {v1}, Lcom/facebook/i/k;-><init>()V

    .line 898
    invoke-virtual {v1, p1}, Lcom/facebook/i/k;->readExternal(Ljava/io/ObjectInput;)V

    .line 899
    invoke-direct {p0, v1}, Lcom/facebook/i/i;->l(Lcom/facebook/i/k;)Lcom/facebook/i/i;

    .line 901
    :cond_b
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 902
    if-eqz v1, :cond_c

    .line 903
    new-instance v1, Lcom/facebook/i/k;

    invoke-direct {v1}, Lcom/facebook/i/k;-><init>()V

    .line 904
    invoke-virtual {v1, p1}, Lcom/facebook/i/k;->readExternal(Ljava/io/ObjectInput;)V

    .line 905
    invoke-direct {p0, v1}, Lcom/facebook/i/i;->m(Lcom/facebook/i/k;)Lcom/facebook/i/i;

    .line 907
    :cond_c
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 908
    if-eqz v1, :cond_d

    .line 909
    new-instance v1, Lcom/facebook/i/k;

    invoke-direct {v1}, Lcom/facebook/i/k;-><init>()V

    .line 910
    invoke-virtual {v1, p1}, Lcom/facebook/i/k;->readExternal(Ljava/io/ObjectInput;)V

    .line 911
    invoke-direct {p0, v1}, Lcom/facebook/i/i;->n(Lcom/facebook/i/k;)Lcom/facebook/i/i;

    .line 913
    :cond_d
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 914
    if-eqz v1, :cond_e

    .line 915
    new-instance v1, Lcom/facebook/i/k;

    invoke-direct {v1}, Lcom/facebook/i/k;-><init>()V

    .line 916
    invoke-virtual {v1, p1}, Lcom/facebook/i/k;->readExternal(Ljava/io/ObjectInput;)V

    .line 917
    invoke-direct {p0, v1}, Lcom/facebook/i/i;->o(Lcom/facebook/i/k;)Lcom/facebook/i/i;

    .line 919
    :cond_e
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 920
    if-eqz v1, :cond_f

    .line 921
    new-instance v1, Lcom/facebook/i/k;

    invoke-direct {v1}, Lcom/facebook/i/k;-><init>()V

    .line 922
    invoke-virtual {v1, p1}, Lcom/facebook/i/k;->readExternal(Ljava/io/ObjectInput;)V

    .line 923
    invoke-direct {p0, v1}, Lcom/facebook/i/i;->p(Lcom/facebook/i/k;)Lcom/facebook/i/i;

    .line 926
    :cond_f
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/i/i;->a(Ljava/lang/String;)Lcom/facebook/i/i;

    .line 927
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/facebook/i/i;->a(I)Lcom/facebook/i/i;

    .line 928
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/i/i;->b(Ljava/lang/String;)Lcom/facebook/i/i;

    .line 930
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 931
    if-eqz v1, :cond_10

    .line 932
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/i/i;->c(Ljava/lang/String;)Lcom/facebook/i/i;

    .line 935
    :cond_10
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 936
    if-eqz v1, :cond_11

    .line 937
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/i/i;->d(Ljava/lang/String;)Lcom/facebook/i/i;

    .line 940
    :cond_11
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 941
    if-eqz v1, :cond_12

    .line 942
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/i/i;->e(Ljava/lang/String;)Lcom/facebook/i/i;

    .line 945
    :cond_12
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 946
    if-eqz v1, :cond_13

    .line 947
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/i/i;->f(Ljava/lang/String;)Lcom/facebook/i/i;

    .line 950
    :cond_13
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 951
    if-eqz v1, :cond_14

    .line 952
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/i/i;->g(Ljava/lang/String;)Lcom/facebook/i/i;

    .line 955
    :cond_14
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/facebook/i/i;->a(Z)Lcom/facebook/i/i;

    .line 957
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    move v1, v0

    .line 958
    :goto_0
    if-ge v1, v2, :cond_15

    .line 959
    new-instance v3, Lcom/facebook/i/h;

    invoke-direct {v3}, Lcom/facebook/i/h;-><init>()V

    .line 960
    invoke-virtual {v3, p1}, Lcom/facebook/i/h;->readExternal(Ljava/io/ObjectInput;)V

    .line 961
    iget-object v4, p0, Lcom/facebook/i/i;->Y:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 964
    :cond_15
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 965
    :goto_1
    if-ge v0, v1, :cond_16

    .line 966
    new-instance v2, Lcom/facebook/i/h;

    invoke-direct {v2}, Lcom/facebook/i/h;-><init>()V

    .line 967
    invoke-virtual {v2, p1}, Lcom/facebook/i/h;->readExternal(Ljava/io/ObjectInput;)V

    .line 968
    iget-object v3, p0, Lcom/facebook/i/i;->Z:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 965
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 971
    :cond_16
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/i/i;->b(Z)Lcom/facebook/i/i;

    .line 973
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 974
    if-eqz v0, :cond_17

    .line 975
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/i/i;->h(Ljava/lang/String;)Lcom/facebook/i/i;

    .line 978
    :cond_17
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/i/i;->c(Z)Lcom/facebook/i/i;

    .line 979
    return-void
.end method

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .parameter "objectOutput"

    .prologue
    const/4 v1, 0x0

    .line 710
    iget-boolean v0, p0, Lcom/facebook/i/i;->a:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 711
    iget-boolean v0, p0, Lcom/facebook/i/i;->a:Z

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/facebook/i/i;->b:Lcom/facebook/i/k;

    invoke-virtual {v0, p1}, Lcom/facebook/i/k;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 714
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/i/i;->c:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 715
    iget-boolean v0, p0, Lcom/facebook/i/i;->c:Z

    if-eqz v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/facebook/i/i;->d:Lcom/facebook/i/k;

    invoke-virtual {v0, p1}, Lcom/facebook/i/k;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 718
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/i/i;->e:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 719
    iget-boolean v0, p0, Lcom/facebook/i/i;->e:Z

    if-eqz v0, :cond_2

    .line 720
    iget-object v0, p0, Lcom/facebook/i/i;->f:Lcom/facebook/i/k;

    invoke-virtual {v0, p1}, Lcom/facebook/i/k;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 722
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/i/i;->g:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 723
    iget-boolean v0, p0, Lcom/facebook/i/i;->g:Z

    if-eqz v0, :cond_3

    .line 724
    iget-object v0, p0, Lcom/facebook/i/i;->h:Lcom/facebook/i/k;

    invoke-virtual {v0, p1}, Lcom/facebook/i/k;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 726
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/i/i;->i:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 727
    iget-boolean v0, p0, Lcom/facebook/i/i;->i:Z

    if-eqz v0, :cond_4

    .line 728
    iget-object v0, p0, Lcom/facebook/i/i;->j:Lcom/facebook/i/k;

    invoke-virtual {v0, p1}, Lcom/facebook/i/k;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 730
    :cond_4
    iget-boolean v0, p0, Lcom/facebook/i/i;->k:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 731
    iget-boolean v0, p0, Lcom/facebook/i/i;->k:Z

    if-eqz v0, :cond_5

    .line 732
    iget-object v0, p0, Lcom/facebook/i/i;->l:Lcom/facebook/i/k;

    invoke-virtual {v0, p1}, Lcom/facebook/i/k;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 734
    :cond_5
    iget-boolean v0, p0, Lcom/facebook/i/i;->m:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 735
    iget-boolean v0, p0, Lcom/facebook/i/i;->m:Z

    if-eqz v0, :cond_6

    .line 736
    iget-object v0, p0, Lcom/facebook/i/i;->n:Lcom/facebook/i/k;

    invoke-virtual {v0, p1}, Lcom/facebook/i/k;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 738
    :cond_6
    iget-boolean v0, p0, Lcom/facebook/i/i;->o:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 739
    iget-boolean v0, p0, Lcom/facebook/i/i;->o:Z

    if-eqz v0, :cond_7

    .line 740
    iget-object v0, p0, Lcom/facebook/i/i;->p:Lcom/facebook/i/k;

    invoke-virtual {v0, p1}, Lcom/facebook/i/k;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 742
    :cond_7
    iget-boolean v0, p0, Lcom/facebook/i/i;->q:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 743
    iget-boolean v0, p0, Lcom/facebook/i/i;->q:Z

    if-eqz v0, :cond_8

    .line 744
    iget-object v0, p0, Lcom/facebook/i/i;->r:Lcom/facebook/i/k;

    invoke-virtual {v0, p1}, Lcom/facebook/i/k;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 746
    :cond_8
    iget-boolean v0, p0, Lcom/facebook/i/i;->s:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 747
    iget-boolean v0, p0, Lcom/facebook/i/i;->s:Z

    if-eqz v0, :cond_9

    .line 748
    iget-object v0, p0, Lcom/facebook/i/i;->t:Lcom/facebook/i/k;

    invoke-virtual {v0, p1}, Lcom/facebook/i/k;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 750
    :cond_9
    iget-boolean v0, p0, Lcom/facebook/i/i;->u:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 751
    iget-boolean v0, p0, Lcom/facebook/i/i;->u:Z

    if-eqz v0, :cond_a

    .line 752
    iget-object v0, p0, Lcom/facebook/i/i;->v:Lcom/facebook/i/k;

    invoke-virtual {v0, p1}, Lcom/facebook/i/k;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 754
    :cond_a
    iget-boolean v0, p0, Lcom/facebook/i/i;->w:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 755
    iget-boolean v0, p0, Lcom/facebook/i/i;->w:Z

    if-eqz v0, :cond_b

    .line 756
    iget-object v0, p0, Lcom/facebook/i/i;->x:Lcom/facebook/i/k;

    invoke-virtual {v0, p1}, Lcom/facebook/i/k;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 758
    :cond_b
    iget-boolean v0, p0, Lcom/facebook/i/i;->y:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 759
    iget-boolean v0, p0, Lcom/facebook/i/i;->y:Z

    if-eqz v0, :cond_c

    .line 760
    iget-object v0, p0, Lcom/facebook/i/i;->z:Lcom/facebook/i/k;

    invoke-virtual {v0, p1}, Lcom/facebook/i/k;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 762
    :cond_c
    iget-boolean v0, p0, Lcom/facebook/i/i;->A:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 763
    iget-boolean v0, p0, Lcom/facebook/i/i;->A:Z

    if-eqz v0, :cond_d

    .line 764
    iget-object v0, p0, Lcom/facebook/i/i;->B:Lcom/facebook/i/k;

    invoke-virtual {v0, p1}, Lcom/facebook/i/k;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 766
    :cond_d
    iget-boolean v0, p0, Lcom/facebook/i/i;->C:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 767
    iget-boolean v0, p0, Lcom/facebook/i/i;->C:Z

    if-eqz v0, :cond_e

    .line 768
    iget-object v0, p0, Lcom/facebook/i/i;->D:Lcom/facebook/i/k;

    invoke-virtual {v0, p1}, Lcom/facebook/i/k;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 770
    :cond_e
    iget-boolean v0, p0, Lcom/facebook/i/i;->E:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 771
    iget-boolean v0, p0, Lcom/facebook/i/i;->E:Z

    if-eqz v0, :cond_f

    .line 772
    iget-object v0, p0, Lcom/facebook/i/i;->F:Lcom/facebook/i/k;

    invoke-virtual {v0, p1}, Lcom/facebook/i/k;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 775
    :cond_f
    iget-object v0, p0, Lcom/facebook/i/i;->H:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 776
    iget v0, p0, Lcom/facebook/i/i;->J:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 777
    iget-object v0, p0, Lcom/facebook/i/i;->L:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 779
    iget-boolean v0, p0, Lcom/facebook/i/i;->M:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 780
    iget-boolean v0, p0, Lcom/facebook/i/i;->M:Z

    if-eqz v0, :cond_10

    .line 781
    iget-object v0, p0, Lcom/facebook/i/i;->N:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 784
    :cond_10
    iget-boolean v0, p0, Lcom/facebook/i/i;->O:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 785
    iget-boolean v0, p0, Lcom/facebook/i/i;->O:Z

    if-eqz v0, :cond_11

    .line 786
    iget-object v0, p0, Lcom/facebook/i/i;->P:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 789
    :cond_11
    iget-boolean v0, p0, Lcom/facebook/i/i;->Q:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 790
    iget-boolean v0, p0, Lcom/facebook/i/i;->Q:Z

    if-eqz v0, :cond_12

    .line 791
    iget-object v0, p0, Lcom/facebook/i/i;->R:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 794
    :cond_12
    iget-boolean v0, p0, Lcom/facebook/i/i;->S:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 795
    iget-boolean v0, p0, Lcom/facebook/i/i;->S:Z

    if-eqz v0, :cond_13

    .line 796
    iget-object v0, p0, Lcom/facebook/i/i;->T:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 799
    :cond_13
    iget-boolean v0, p0, Lcom/facebook/i/i;->U:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 800
    iget-boolean v0, p0, Lcom/facebook/i/i;->U:Z

    if-eqz v0, :cond_14

    .line 801
    iget-object v0, p0, Lcom/facebook/i/i;->V:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 804
    :cond_14
    iget-boolean v0, p0, Lcom/facebook/i/i;->X:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 806
    invoke-direct {p0}, Lcom/facebook/i/i;->s()I

    move-result v3

    .line 807
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    move v2, v1

    .line 808
    :goto_0
    if-ge v2, v3, :cond_15

    .line 809
    iget-object v0, p0, Lcom/facebook/i/i;->Y:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/i/h;

    invoke-virtual {v0, p1}, Lcom/facebook/i/h;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 808
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 812
    :cond_15
    invoke-direct {p0}, Lcom/facebook/i/i;->t()I

    move-result v2

    .line 813
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 814
    :goto_1
    if-ge v1, v2, :cond_16

    .line 815
    iget-object v0, p0, Lcom/facebook/i/i;->Z:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/i/h;

    invoke-virtual {v0, p1}, Lcom/facebook/i/h;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 814
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 818
    :cond_16
    iget-boolean v0, p0, Lcom/facebook/i/i;->ab:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 820
    iget-boolean v0, p0, Lcom/facebook/i/i;->ac:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 821
    iget-boolean v0, p0, Lcom/facebook/i/i;->ac:Z

    if-eqz v0, :cond_17

    .line 822
    iget-object v0, p0, Lcom/facebook/i/i;->ad:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 825
    :cond_17
    iget-boolean v0, p0, Lcom/facebook/i/i;->af:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 826
    return-void
.end method
