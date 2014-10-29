.class public Landroid/support/v4/app/k;
.super Landroid/app/Activity;
.source "FragmentActivity.java"


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Landroid/support/v4/app/u;

.field c:Landroid/support/v4/app/u;

.field final d:Landroid/support/v4/app/q;

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/ap;",
            ">;"
        }
    .end annotation
.end field

.field n:Landroid/support/v4/app/ap;

.field o:Landroid/support/v4/app/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    new-instance v0, Landroid/support/v4/app/l;

    invoke-direct {v0, p0}, Landroid/support/v4/app/l;-><init>(Landroid/support/v4/app/k;)V

    iput-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/os/Handler;

    .line 103
    new-instance v0, Landroid/support/v4/app/u;

    invoke-direct {v0}, Landroid/support/v4/app/u;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/k;->c:Landroid/support/v4/app/u;

    .line 105
    new-instance v0, Landroid/support/v4/app/m;

    invoke-direct {v0, p0}, Landroid/support/v4/app/m;-><init>(Landroid/support/v4/app/k;)V

    iput-object v0, p0, Landroid/support/v4/app/k;->d:Landroid/support/v4/app/q;

    .line 134
    return-void
.end method

.method private a(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 936
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/u;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/view/View;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/16 v3, 0x56

    const/16 v1, 0x46

    const/16 v6, 0x2c

    const/16 v5, 0x20

    const/16 v2, 0x2e

    .line 747
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 748
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    const/16 v0, 0x7b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 750
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 752
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 756
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 758
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 759
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x45

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 760
    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 761
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x48

    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    :goto_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 763
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x43

    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4c

    :goto_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 765
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 767
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x53

    :goto_9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0x50

    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 769
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 770
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 771
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 772
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 773
    const/16 v0, 0x2d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 776
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    .line 778
    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    .line 779
    const-string v0, " #"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 782
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 785
    const/high16 v0, -0x100

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_1

    .line 793
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 796
    :goto_a
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 797
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 798
    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :cond_1
    :goto_b
    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 753
    :sswitch_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 754
    :sswitch_1
    const/16 v0, 0x49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 755
    :sswitch_2
    const/16 v0, 0x47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 758
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 759
    goto/16 :goto_2

    .line 760
    :cond_4
    const/16 v0, 0x44

    goto/16 :goto_3

    :cond_5
    move v0, v2

    .line 761
    goto/16 :goto_4

    :cond_6
    move v0, v2

    .line 762
    goto/16 :goto_5

    :cond_7
    move v0, v2

    .line 763
    goto/16 :goto_6

    :cond_8
    move v0, v2

    .line 764
    goto/16 :goto_7

    :cond_9
    move v1, v2

    .line 766
    goto/16 :goto_8

    :cond_a
    move v0, v2

    .line 767
    goto/16 :goto_9

    .line 787
    :sswitch_3
    :try_start_1
    const-string v0, "app"

    goto :goto_a

    .line 790
    :sswitch_4
    const-string v0, "android"
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_b

    .line 752
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch

    .line 785
    :sswitch_data_1
    .sparse-switch
        0x1000000 -> :sswitch_4
        0x7f000000 -> :sswitch_3
    .end sparse-switch
.end method

.method private static a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 813
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 814
    if-nez p2, :cond_1

    .line 815
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    :cond_0
    return-void

    .line 818
    :cond_1
    invoke-static {p2}, Landroid/support/v4/app/k;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 819
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 822
    check-cast p2, Landroid/view/ViewGroup;

    .line 823
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 824
    if-lez v1, :cond_0

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 828
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 829
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, p1, v3}, Landroid/support/v4/app/k;->a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/support/v4/app/Fragment;)I
    .locals 2
    .parameter

    .prologue
    .line 930
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/u;->c(I)I

    .line 931
    iget v0, p1, Landroid/support/v4/app/Fragment;->p:I

    return v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 850
    iget-boolean v0, p0, Landroid/support/v4/app/k;->l:Z

    if-eqz v0, :cond_0

    .line 851
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k;->l:Z

    .line 852
    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    if-eqz v0, :cond_0

    .line 853
    iget-boolean v0, p0, Landroid/support/v4/app/k;->i:Z

    if-nez v0, :cond_1

    .line 854
    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->c()V

    .line 861
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->s()V

    .line 862
    return-void

    .line 856
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->d()V

    goto :goto_0
.end method

.method private g()Landroid/support/v4/app/r;
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/p;

    if-nez v0, :cond_0

    .line 974
    new-instance v0, Landroid/support/v4/app/p;

    invoke-direct {v0, p0}, Landroid/support/v4/app/p;-><init>(Landroid/support/v4/app/k;)V

    iput-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/p;

    .line 977
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/p;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/String;ZZ)Landroid/support/v4/app/ap;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 956
    iget-object v0, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 957
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    .line 959
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ap;

    .line 960
    if-nez v0, :cond_2

    .line 961
    if-eqz p3, :cond_1

    .line 962
    new-instance v0, Landroid/support/v4/app/ap;

    invoke-direct {p0}, Landroid/support/v4/app/k;->g()Landroid/support/v4/app/r;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Landroid/support/v4/app/ap;-><init>(Ljava/lang/String;Landroid/support/v4/app/r;Z)V

    .line 963
    iget-object v1, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    :cond_1
    :goto_0
    return-object v0

    .line 966
    :cond_2
    invoke-direct {p0}, Landroid/support/v4/app/k;->g()Landroid/support/v4/app/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ap;->a(Landroid/support/v4/app/r;)V

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter

    .prologue
    .line 872
    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    const/high16 v1, -0x1

    .line 899
    if-ne p3, v0, :cond_0

    .line 900
    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 911
    :goto_0
    return-void

    .line 903
    :cond_0
    and-int v0, p3, v1

    if-eqz v0, :cond_1

    .line 904
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v4/app/k;->b(Landroid/support/v4/app/Fragment;)I

    move-result v0

    .line 907
    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 908
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for fragment ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 910
    :cond_2
    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v4/app/s;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    check-cast p1, Landroid/support/v4/app/u;

    iput-object p1, p0, Landroid/support/v4/app/k;->c:Landroid/support/v4/app/u;

    .line 148
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 915
    iget-object v0, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ap;

    .line 917
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/ap;->g:Z

    if-nez v1, :cond_0

    .line 918
    invoke-virtual {v0}, Landroid/support/v4/app/ap;->h()V

    .line 919
    iget-object v0, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    :cond_0
    return-void
.end method

.method final a(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 834
    iget-boolean v0, p0, Landroid/support/v4/app/k;->h:Z

    if-nez v0, :cond_0

    .line 835
    iput-boolean v1, p0, Landroid/support/v4/app/k;->h:Z

    .line 836
    iput-boolean p1, p0, Landroid/support/v4/app/k;->i:Z

    .line 837
    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 838
    invoke-direct {p0}, Landroid/support/v4/app/k;->f()V

    .line 840
    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->p()V

    .line 519
    return-void
.end method

.method public final b_()Landroid/support/v4/app/s;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/v4/app/k;->c:Landroid/support/v4/app/u;

    return-object v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 694
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 697
    invoke-static {p0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;)V

    .line 706
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->x()V

    .line 707
    return-void

    .line 701
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/k;->j:Z

    goto :goto_0
.end method

.method public final d()Landroid/support/v4/app/s;
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 720
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 724
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 725
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 726
    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 728
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 729
    iget-boolean v1, p0, Landroid/support/v4/app/k;->e:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 730
    iget-boolean v1, p0, Landroid/support/v4/app/k;->f:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 731
    iget-boolean v1, p0, Landroid/support/v4/app/k;->g:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 732
    iget-boolean v1, p0, Landroid/support/v4/app/k;->h:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 733
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 734
    iget-boolean v0, p0, Landroid/support/v4/app/k;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 735
    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 738
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/ap;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 741
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/u;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 742
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "View Hierarchy:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, p3, v1}, Landroid/support/v4/app/k;->a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 744
    return-void
.end method

.method public final e()Landroid/support/v4/app/an;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 947
    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    .line 952
    :goto_0
    return-object v0

    .line 950
    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/app/k;->k:Z

    .line 951
    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v4/app/k;->l:Z

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/k;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/ap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    .line 952
    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    goto :goto_0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->y()Landroid/view/MenuInflater;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_0

    .line 287
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 167
    invoke-static {p3}, Lcom/facebook/e/b/a/a;->a(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 169
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->l()V

    .line 170
    shr-int/lit8 v0, p1, 0x10

    .line 171
    if-eqz v0, :cond_2

    .line 172
    if-gez v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Activity result fragment index out of range: 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 178
    if-nez v0, :cond_1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Activity result no fragment exists for index: 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 182
    :cond_1
    const v1, 0xffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v4/app/Fragment;->a(IILandroid/content/Intent;)V

    goto :goto_0

    .line 187
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Landroid/support/v4/app/k;->finish()V

    .line 198
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 206
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/u;->a(Landroid/content/res/Configuration;)V

    .line 207
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-direct {p0}, Landroid/support/v4/app/k;->g()Landroid/support/v4/app/r;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/k;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/r;Landroid/support/v4/app/q;Landroid/support/v4/app/Fragment;)V

    .line 216
    invoke-virtual {p0}, Landroid/support/v4/app/k;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p0}, Landroid/support/v4/app/k;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".onCreate() with saved state"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/facebook/e/b/a/a;->b(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 227
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 233
    invoke-direct {p0}, Landroid/support/v4/app/k;->g()Landroid/support/v4/app/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/r;->f()Z

    move-result v0

    if-nez v0, :cond_3

    .line 234
    invoke-virtual {p0}, Landroid/support/v4/app/k;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/o;

    .line 236
    if-eqz v0, :cond_1

    .line 237
    iget-object v2, v0, Landroid/support/v4/app/o;->e:Ljava/util/HashMap;

    iput-object v2, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    .line 239
    :cond_1
    if-eqz p1, :cond_2

    .line 240
    const-string v2, "android:support:fragments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 241
    iget-object v3, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v3, v2, v0}, Landroid/support/v4/app/u;->a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 243
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->m()V

    .line 245
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    .line 241
    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 267
    if-nez p1, :cond_1

    .line 268
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 269
    iget-object v1, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {p0}, Landroid/support/v4/app/k;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/u;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 270
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 278
    :goto_0
    return v0

    .line 276
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 278
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .parameter "featureId"

    .prologue
    .line 253
    if-nez p1, :cond_0

    .line 254
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->w()Landroid/view/View;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9
    .parameter "name"
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v3, -0x1

    .line 295
    const-string v0, "fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 375
    :goto_0
    return-object v0

    .line 299
    :cond_0
    const-string v0, "class"

    invoke-interface {p3, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    sget-object v2, Landroid/support/v4/app/n;->a:[I

    invoke-virtual {p2, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 301
    if-nez v0, :cond_1

    .line 302
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    :cond_1
    invoke-virtual {v4, v8, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 305
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 306
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 308
    if-ne v2, v3, :cond_2

    if-nez v6, :cond_2

    .line 311
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :cond_2
    iget-object v4, p0, Landroid/support/v4/app/k;->c:Landroid/support/v4/app/u;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/support/v4/app/k;->c:Landroid/support/v4/app/u;

    move-object v5, v4

    .line 323
    :goto_1
    if-eq v2, v3, :cond_3

    invoke-virtual {v5, v2}, Landroid/support/v4/app/u;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 324
    :cond_3
    if-nez v1, :cond_4

    if-eqz v6, :cond_4

    .line 325
    invoke-virtual {v5, v6}, Landroid/support/v4/app/u;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 327
    :cond_4
    sget-boolean v4, Landroid/support/v4/app/u;->a:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "onCreateView: id=0x"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " fname="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " existing="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 334
    :cond_5
    if-nez v1, :cond_8

    .line 335
    invoke-static {p0, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 336
    iput-boolean v8, v4, Landroid/support/v4/app/Fragment;->y:Z

    .line 337
    if-eqz v2, :cond_7

    move v1, v2

    :goto_2
    iput v1, v4, Landroid/support/v4/app/Fragment;->G:I

    .line 338
    iput v3, v4, Landroid/support/v4/app/Fragment;->H:I

    .line 339
    iput-object v6, v4, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;

    .line 340
    iput-boolean v8, v4, Landroid/support/v4/app/Fragment;->z:Z

    .line 341
    iput-object v5, v4, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/u;

    .line 342
    iget-object v1, v4, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->A()V

    .line 343
    invoke-virtual {v5, v4, v8}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;Z)V

    move-object v1, v4

    .line 365
    :goto_3
    iget-object v3, v1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-nez v3, :cond_b

    .line 366
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " did not create a view."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :cond_6
    iget-object v4, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    move-object v5, v4

    goto :goto_1

    :cond_7
    move v1, v3

    .line 337
    goto :goto_2

    .line 345
    :cond_8
    iget-boolean v4, v1, Landroid/support/v4/app/Fragment;->z:Z

    if-eqz v4, :cond_9

    .line 348
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Duplicate id 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", tag "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", or parent id 0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with another fragment for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 355
    :cond_9
    iput-boolean v8, v1, Landroid/support/v4/app/Fragment;->z:Z

    .line 359
    iget-boolean v3, v1, Landroid/support/v4/app/Fragment;->M:Z

    if-nez v3, :cond_a

    .line 360
    iget-object v3, v1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->A()V

    .line 362
    :cond_a
    invoke-virtual {v5, v1}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/Fragment;)V

    goto :goto_3

    .line 369
    :cond_b
    if-eqz v2, :cond_c

    .line 370
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 372
    :cond_c
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 373
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 375
    :cond_d
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 383
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 385
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/k;->a(Z)V

    .line 387
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->u()V

    .line 388
    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->h()V

    .line 391
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 398
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 403
    invoke-virtual {p0}, Landroid/support/v4/app/k;->onBackPressed()V

    .line 404
    const/4 v0, 0x1

    .line 407
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 415
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 416
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->v()V

    .line 417
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 424
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    const/4 v0, 0x1

    .line 436
    :goto_0
    return v0

    .line 428
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 436
    const/4 v0, 0x0

    goto :goto_0

    .line 430
    :sswitch_0
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/u;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 433
    :sswitch_1
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/u;->b(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 428
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 479
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 480
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->l()V

    .line 481
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 445
    packed-switch p1, :pswitch_data_0

    .line 450
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 451
    return-void

    .line 447
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/u;->b(Landroid/view/Menu;)V

    goto :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 458
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k;->f:Z

    .line 460
    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 462
    invoke-virtual {p0}, Landroid/support/v4/app/k;->b()V

    .line 464
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->q()V

    .line 465
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 505
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 506
    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 507
    invoke-virtual {p0}, Landroid/support/v4/app/k;->b()V

    .line 508
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->i()Z

    .line 509
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3
    .parameter "featureId"
    .parameter "view"
    .parameter "menu"

    .prologue
    const/4 v0, 0x0

    .line 526
    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    .line 527
    iget-boolean v1, p0, Landroid/support/v4/app/k;->j:Z

    if-eqz v1, :cond_0

    .line 528
    iput-boolean v0, p0, Landroid/support/v4/app/k;->j:Z

    .line 529
    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    .line 530
    invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/k;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 532
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    .line 533
    iget-object v2, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v2, p3}, Landroid/support/v4/app/u;->a(Landroid/view/Menu;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 534
    if-eqz v1, :cond_1

    invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 536
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 494
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 495
    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/k;->f:Z

    .line 497
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->i()Z

    .line 498
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 546
    iget-boolean v1, p0, Landroid/support/v4/app/k;->g:Z

    if-eqz v1, :cond_0

    .line 547
    invoke-virtual {p0, v2}, Landroid/support/v4/app/k;->a(Z)V

    .line 550
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v1}, Landroid/support/v4/app/u;->j()Ljava/util/ArrayList;

    move-result-object v4

    .line 554
    iget-object v1, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 557
    iget-object v1, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v5, v1, [Landroid/support/v4/app/ap;

    .line 558
    iget-object v1, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move v1, v0

    .line 559
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_3

    .line 561
    aget-object v6, v5, v0

    .line 562
    iget-boolean v7, v6, Landroid/support/v4/app/ap;->g:Z

    if-eqz v7, :cond_1

    move v1, v2

    .line 560
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    :cond_1
    invoke-virtual {v6}, Landroid/support/v4/app/ap;->h()V

    .line 566
    iget-object v7, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    iget-object v6, v6, Landroid/support/v4/app/ap;->d:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move v1, v0

    .line 571
    :cond_3
    if-nez v4, :cond_4

    if-nez v1, :cond_4

    move-object v0, v3

    .line 581
    :goto_2
    return-object v0

    .line 575
    :cond_4
    new-instance v0, Landroid/support/v4/app/o;

    invoke-direct {v0}, Landroid/support/v4/app/o;-><init>()V

    .line 576
    iput-object v3, v0, Landroid/support/v4/app/o;->a:Ljava/lang/Object;

    .line 577
    iput-object v3, v0, Landroid/support/v4/app/o;->b:Ljava/lang/Object;

    .line 578
    iput-object v3, v0, Landroid/support/v4/app/o;->c:Ljava/util/HashMap;

    .line 579
    iput-object v4, v0, Landroid/support/v4/app/o;->d:Ljava/util/ArrayList;

    .line 580
    iget-object v1, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    iput-object v1, v0, Landroid/support/v4/app/o;->e:Ljava/util/HashMap;

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 589
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 590
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->k()Landroid/os/Parcelable;

    move-result-object v0

    .line 595
    invoke-static {v0}, Lcom/facebook/e/b/a/a;->b(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 597
    if-eqz v0, :cond_0

    .line 598
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 600
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 608
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 610
    iput-boolean v0, p0, Landroid/support/v4/app/k;->g:Z

    .line 611
    iput-boolean v0, p0, Landroid/support/v4/app/k;->h:Z

    .line 612
    iget-object v1, p0, Landroid/support/v4/app/k;->a:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 614
    iget-boolean v1, p0, Landroid/support/v4/app/k;->e:Z

    if-nez v1, :cond_0

    .line 615
    iput-boolean v3, p0, Landroid/support/v4/app/k;->e:Z

    .line 616
    iget-object v1, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v1}, Landroid/support/v4/app/u;->n()V

    .line 619
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v1}, Landroid/support/v4/app/u;->l()V

    .line 620
    iget-object v1, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v1}, Landroid/support/v4/app/u;->i()Z

    .line 622
    iget-boolean v1, p0, Landroid/support/v4/app/k;->l:Z

    if-nez v1, :cond_2

    .line 623
    iput-boolean v3, p0, Landroid/support/v4/app/k;->l:Z

    .line 624
    iget-object v1, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    if-eqz v1, :cond_3

    .line 625
    iget-object v1, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    invoke-virtual {v1}, Landroid/support/v4/app/ap;->b()V

    .line 633
    :cond_1
    :goto_0
    iput-boolean v3, p0, Landroid/support/v4/app/k;->k:Z

    .line 637
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v1}, Landroid/support/v4/app/u;->o()V

    .line 638
    iget-object v1, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    .line 639
    iget-object v1, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/support/v4/app/ap;

    .line 640
    iget-object v2, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 641
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 643
    aget-object v2, v1, v0

    .line 644
    invoke-virtual {v2}, Landroid/support/v4/app/ap;->e()V

    .line 645
    invoke-virtual {v2}, Landroid/support/v4/app/ap;->g()V

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 626
    :cond_3
    iget-boolean v1, p0, Landroid/support/v4/app/k;->k:Z

    if-nez v1, :cond_1

    .line 627
    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/support/v4/app/k;->l:Z

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/v4/app/k;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/ap;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    .line 629
    iget-object v1, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    iget-boolean v1, v1, Landroid/support/v4/app/ap;->f:Z

    if-nez v1, :cond_1

    .line 630
    iget-object v1, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    invoke-virtual {v1}, Landroid/support/v4/app/ap;->b()V

    goto :goto_0

    .line 649
    :cond_4
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 656
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 658
    iput-boolean v1, p0, Landroid/support/v4/app/k;->g:Z

    .line 659
    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 661
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->r()V

    .line 662
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 888
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/high16 v0, -0x1

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 889
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 891
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 892
    return-void
.end method
