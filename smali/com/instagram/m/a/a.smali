.class public final Lcom/instagram/m/a/a;
.super Lcom/instagram/api/k/a/b;
.source "QuickExperimentExposeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/b",
        "<",
        "Lcom/instagram/api/k/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/instagram/api/k/a/b;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/instagram/m/a/a;->a:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/instagram/m/a/a;->b:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/m/a/a;->d:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method protected final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-static {p1}, Lcom/instagram/api/k/a/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/instagram/api/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/instagram/m/a/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "id"

    iget-object v1, p0, Lcom/instagram/m/a/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    const-string v0, "experiment"

    iget-object v1, p0, Lcom/instagram/m/a/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/instagram/m/a/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 50
    const-string v0, "data"

    iget-object v1, p0, Lcom/instagram/m/a/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    return-void
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "qe/expose/"

    return-object v0
.end method
