.class final Lcom/instagram/share/b/k;
.super Lcom/instagram/common/a/a/q;
.source "GraphMeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/q",
        "<",
        "Lcom/instagram/share/b/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/share/b/j;


# direct methods
.method constructor <init>(Lcom/instagram/share/b/j;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/instagram/share/b/k;->a:Lcom/instagram/share/b/j;

    invoke-direct {p0}, Lcom/instagram/common/a/a/q;-><init>()V

    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/share/b/l;
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-static {p0}, Lcom/instagram/share/b/m;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/share/b/l;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-static {p1}, Lcom/instagram/share/b/k;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/share/b/l;

    move-result-object v0

    return-object v0
.end method
