.class final Lcom/instagram/creation/b/c/g;
.super Ljava/lang/Object;
.source "VideoUploader.java"

# interfaces
.implements Lcom/instagram/common/a/f/j;


# instance fields
.field final synthetic b:Lcom/instagram/creation/b/a/b;

.field final synthetic c:Lcom/instagram/creation/b/c/e;


# direct methods
.method constructor <init>(Lcom/instagram/creation/b/c/e;Lcom/instagram/creation/b/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/instagram/creation/b/c/g;->c:Lcom/instagram/creation/b/c/e;

    iput-object p2, p0, Lcom/instagram/creation/b/c/g;->b:Lcom/instagram/creation/b/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/instagram/creation/b/c/g;->b:Lcom/instagram/creation/b/a/b;

    const-wide v1, 0x4046800000000000L

    long-to-double v3, p1

    mul-double/2addr v1, v3

    long-to-double v3, p3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/lit8 v1, v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->c(I)V

    .line 127
    return-void
.end method
