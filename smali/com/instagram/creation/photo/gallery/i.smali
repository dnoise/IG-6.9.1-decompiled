.class final Lcom/instagram/creation/photo/gallery/i;
.super Ljava/lang/Object;
.source "ImageListUber.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/instagram/creation/photo/gallery/j;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/i;-><init>()V

    return-void
.end method

.method private static a(Lcom/instagram/creation/photo/gallery/j;Lcom/instagram/creation/photo/gallery/j;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/instagram/creation/photo/gallery/j;->b:J

    iget-wide v2, p1, Lcom/instagram/creation/photo/gallery/j;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 245
    iget-wide v0, p0, Lcom/instagram/creation/photo/gallery/j;->b:J

    iget-wide v2, p1, Lcom/instagram/creation/photo/gallery/j;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    .line 245
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 247
    :cond_1
    iget v0, p0, Lcom/instagram/creation/photo/gallery/j;->a:I

    iget v1, p1, Lcom/instagram/creation/photo/gallery/j;->a:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 241
    check-cast p1, Lcom/instagram/creation/photo/gallery/j;

    .end local p1
    check-cast p2, Lcom/instagram/creation/photo/gallery/j;

    .end local p2
    invoke-static {p1, p2}, Lcom/instagram/creation/photo/gallery/i;->a(Lcom/instagram/creation/photo/gallery/j;Lcom/instagram/creation/photo/gallery/j;)I

    move-result v0

    return v0
.end method
