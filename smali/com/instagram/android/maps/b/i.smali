.class public final Lcom/instagram/android/maps/b/i;
.super Ljava/lang/Object;
.source "QuadtreeRegion.java"


# instance fields
.field private a:Lcom/instagram/android/maps/b/h;

.field private b:Lcom/instagram/android/maps/b/h;

.field private c:Lcom/instagram/android/maps/b/h;

.field private d:Lcom/instagram/android/maps/b/h;


# direct methods
.method public constructor <init>(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->b()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    .line 17
    invoke-virtual {p2}, Lcom/instagram/android/maps/b/h;->b()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    .line 18
    return-void
.end method

.method public static a(Lcom/google/android/maps/GeoPoint;II)Lcom/instagram/android/maps/b/i;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v8, 0x412e848000000000L

    const-wide/high16 v6, 0x4000

    .line 26
    invoke-static {p0}, Lcom/instagram/android/maps/b/h;->a(Lcom/google/android/maps/GeoPoint;)Lcom/instagram/android/maps/b/h;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/instagram/android/maps/b/h;

    int-to-double v2, p1

    div-double/2addr v2, v8

    div-double/2addr v2, v6

    int-to-double v4, p2

    div-double/2addr v4, v8

    div-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/instagram/android/maps/b/h;-><init>(DD)V

    .line 28
    new-instance v2, Lcom/instagram/android/maps/b/i;

    invoke-direct {v2, v0, v1}, Lcom/instagram/android/maps/b/i;-><init>(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)V

    return-object v2
.end method

.method public static c()Lcom/instagram/android/maps/b/i;
    .locals 6

    .prologue
    const-wide/16 v1, 0x0

    .line 77
    new-instance v0, Lcom/instagram/android/maps/b/h;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/instagram/android/maps/b/h;-><init>(DD)V

    .line 78
    new-instance v1, Lcom/instagram/android/maps/b/h;

    const-wide v2, 0x4056800000000000L

    const-wide v4, 0x4066800000000000L

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/instagram/android/maps/b/h;-><init>(DD)V

    .line 79
    new-instance v2, Lcom/instagram/android/maps/b/i;

    invoke-direct {v2, v0, v1}, Lcom/instagram/android/maps/b/i;-><init>(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)V

    return-object v2
.end method

.method private g()Lcom/instagram/android/maps/b/h;
    .locals 7

    .prologue
    .line 47
    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->c:Lcom/instagram/android/maps/b/h;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/instagram/android/maps/b/h;

    iget-object v1, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v1}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v1

    iget-object v3, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v3}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v3

    sub-double/2addr v1, v3

    iget-object v3, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v3}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v5}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/maps/b/h;-><init>(DD)V

    iput-object v0, p0, Lcom/instagram/android/maps/b/i;->c:Lcom/instagram/android/maps/b/h;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->c:Lcom/instagram/android/maps/b/h;

    return-object v0
.end method

.method private h()Lcom/instagram/android/maps/b/h;
    .locals 7

    .prologue
    .line 62
    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->d:Lcom/instagram/android/maps/b/h;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/instagram/android/maps/b/h;

    iget-object v1, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v1}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v1

    iget-object v3, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v3}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v3

    add-double/2addr v1, v3

    iget-object v3, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v3}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v5}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/maps/b/h;-><init>(DD)V

    iput-object v0, p0, Lcom/instagram/android/maps/b/i;->d:Lcom/instagram/android/maps/b/h;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->d:Lcom/instagram/android/maps/b/h;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/instagram/android/maps/b/i;
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lcom/instagram/android/maps/b/i;

    iget-object v1, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    iget-object v2, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/maps/b/i;-><init>(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)V

    return-object v0
.end method

.method public final a(Lcom/instagram/android/maps/b/h;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v3

    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v5

    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v7

    sub-double/2addr v5, v7

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v3

    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v5

    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v7

    add-double/2addr v5, v7

    cmpg-double v0, v3, v5

    if-gtz v0, :cond_0

    move v0, v1

    .line 42
    :goto_0
    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v5}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v5

    iget-object v7, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v7}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v7

    sub-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_1

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v3

    iget-object v5, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v5}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v5

    iget-object v7, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v7}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v7

    add-double/2addr v5, v7

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_1

    move v3, v1

    .line 43
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 41
    goto :goto_0

    :cond_1
    move v3, v2

    .line 42
    goto :goto_1

    :cond_2
    move v1, v2

    .line 43
    goto :goto_2
.end method

.method public final a(Lcom/instagram/android/maps/b/i;)Z
    .locals 4
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/instagram/android/maps/b/i;->g()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v0

    invoke-direct {p1}, Lcom/instagram/android/maps/b/i;->h()Lcom/instagram/android/maps/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/maps/b/i;->h()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v0

    invoke-direct {p1}, Lcom/instagram/android/maps/b/i;->g()Lcom/instagram/android/maps/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/maps/b/i;->g()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v0

    invoke-direct {p1}, Lcom/instagram/android/maps/b/i;->h()Lcom/instagram/android/maps/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/maps/b/i;->h()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v0

    invoke-direct {p1}, Lcom/instagram/android/maps/b/i;->g()Lcom/instagram/android/maps/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/instagram/android/maps/b/i;
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    const-wide/high16 v1, 0x4000

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/maps/b/h;->a(D)Lcom/instagram/android/maps/b/h;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/instagram/android/maps/b/i;

    iget-object v2, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    invoke-direct {v1, v2, v0}, Lcom/instagram/android/maps/b/i;-><init>(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)V

    return-object v1
.end method

.method public final b(Lcom/instagram/android/maps/b/i;)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p1}, Lcom/instagram/android/maps/b/i;->g()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/b/i;->a(Lcom/instagram/android/maps/b/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p1}, Lcom/instagram/android/maps/b/i;->h()Lcom/instagram/android/maps/b/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/b/i;->a(Lcom/instagram/android/maps/b/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 83
    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lcom/instagram/android/maps/b/h;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->a:Lcom/instagram/android/maps/b/h;

    return-object v0
.end method

.method public final f()Lcom/instagram/android/maps/b/h;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/instagram/android/maps/b/i;->b:Lcom/instagram/android/maps/b/h;

    return-object v0
.end method
