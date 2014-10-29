.class final Lcom/instagram/android/feed/a/g;
.super Ljava/lang/Object;
.source "FeedAdapter.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a;

.field private b:Z

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/feed/d/l;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/instagram/android/feed/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 940
    iput-object p1, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 942
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/feed/a/g;->b:Z

    .line 944
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/a/g;->c:Ljava/util/Map;

    .line 945
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/a/g;->d:Ljava/util/ArrayList;

    .line 946
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/a/g;->e:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/feed/a/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 940
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/g;-><init>(Lcom/instagram/android/feed/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/a/g;)V
    .locals 0
    .parameter

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/instagram/android/feed/a/g;->h()V

    return-void
.end method

.method private a(Lcom/instagram/feed/d/l;)V
    .locals 2
    .parameter

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->o()I

    move-result v0

    sget v1, Lcom/instagram/android/feed/a/h;->a:I

    if-ne v0, v1, :cond_0

    .line 1058
    invoke-static {}, Lcom/instagram/common/g/b/h;->a()Lcom/instagram/common/g/b/h;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;

    iget-object v1, v1, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/instagram/feed/d/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/g/b/h;->c(Ljava/lang/String;)V

    .line 1062
    :goto_0
    return-void

    .line 1060
    :cond_0
    invoke-static {}, Lcom/instagram/common/g/b/h;->a()Lcom/instagram/common/g/b/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/g/b/h;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/android/feed/a/g;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 940
    iget-object v0, p0, Lcom/instagram/android/feed/a/g;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/feed/a/g;)I
    .locals 1
    .parameter

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/instagram/android/feed/a/g;->g()I

    move-result v0

    return v0
.end method

.method private f()I
    .locals 2

    .prologue
    .line 1036
    const/4 v0, 0x0

    .line 1038
    iget-object v1, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;

    iget-object v1, v1, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/a;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;

    iget-object v1, v1, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/a;->ag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/instagram/android/feed/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    .line 1041
    :cond_0
    return v0
.end method

.method private g()I
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/instagram/android/feed/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/instagram/android/feed/a/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    .line 1066
    invoke-direct {p0, v0}, Lcom/instagram/android/feed/a/g;->a(Lcom/instagram/feed/d/l;)V

    goto :goto_0

    .line 1068
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/instagram/feed/d/l;
    .locals 1
    .parameter

    .prologue
    .line 949
    iget-object v0, p0, Lcom/instagram/android/feed/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    return-object v0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 999
    iget-object v0, p0, Lcom/instagram/android/feed/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1001
    iget-object v0, p0, Lcom/instagram/android/feed/a/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    .line 1002
    iget-object v2, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v2, v0}, Lcom/instagram/android/feed/a/a;->b(Lcom/instagram/feed/d/l;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1003
    iget-object v2, p0, Lcom/instagram/android/feed/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1006
    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 967
    .line 970
    if-eqz p1, :cond_2

    .line 971
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    .line 972
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v5

    .line 973
    iget-object v1, p0, Lcom/instagram/android/feed/a/g;->c:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/feed/d/l;

    .line 975
    if-nez v1, :cond_0

    .line 976
    iget-object v1, p0, Lcom/instagram/android/feed/a/g;->c:Ljava/util/Map;

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    if-eqz p2, :cond_1

    .line 979
    iget-object v5, p0, Lcom/instagram/android/feed/a/g;->d:Ljava/util/ArrayList;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v5, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v2, v1

    .line 983
    :goto_1
    invoke-direct {p0, v0}, Lcom/instagram/android/feed/a/g;->a(Lcom/instagram/feed/d/l;)V

    :cond_0
    move v0, v2

    move v2, v0

    .line 984
    goto :goto_0

    .line 981
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/feed/a/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 990
    :cond_2
    iget-boolean v0, p0, Lcom/instagram/android/feed/a/g;->b:Z

    if-eqz v0, :cond_3

    .line 991
    iput-boolean v3, p0, Lcom/instagram/android/feed/a/g;->b:Z

    .line 992
    iget-object v0, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a;->c(Lcom/instagram/android/feed/a/a;)Lcom/instagram/android/feed/a/f;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 993
    iget-object v0, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a;->c(Lcom/instagram/android/feed/a/a;)Lcom/instagram/android/feed/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/feed/a/f;->a()V

    .line 996
    :cond_3
    return-void
.end method

.method public final b(I)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 953
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 954
    mul-int/lit8 v2, p1, 0x3

    .line 956
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    .line 957
    add-int v3, v2, v0

    .line 958
    invoke-direct {p0}, Lcom/instagram/android/feed/a/g;->g()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 959
    invoke-virtual {p0, v3}, Lcom/instagram/android/feed/a/g;->a(I)Lcom/instagram/feed/d/l;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 963
    :cond_1
    return-object v1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 1009
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/feed/a/g;->b:Z

    .line 1011
    iget-object v0, p0, Lcom/instagram/android/feed/a/g;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1012
    iget-object v0, p0, Lcom/instagram/android/feed/a/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1013
    iget-object v0, p0, Lcom/instagram/android/feed/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1014
    return-void
.end method

.method public final c()I
    .locals 4

    .prologue
    const-wide/high16 v2, 0x4008

    .line 1019
    iget-object v0, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a;->d(Lcom/instagram/android/feed/a/a;)I

    move-result v0

    sget v1, Lcom/instagram/android/feed/a/h;->a:I

    if-ne v0, v1, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/instagram/android/feed/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/instagram/android/feed/a/g;->f()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1028
    :goto_0
    return v0

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a;->d(Lcom/instagram/android/feed/a/a;)I

    move-result v0

    sget v1, Lcom/instagram/android/feed/a/h;->b:I

    if-ne v0, v1, :cond_3

    .line 1025
    iget-object v0, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;

    iget-object v0, v0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/feed/a/g;->a:Lcom/instagram/android/feed/a/a;

    iget-object v0, v0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->ah()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1026
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/feed/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    .line 1028
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/feed/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    .line 1031
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "View mode not handled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1049
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/g;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/instagram/android/feed/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
