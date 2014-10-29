.class final Lcom/instagram/o/b/i;
.super Lcom/instagram/common/a/a/q;
.source "AutoUpdateRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/q",
        "<",
        "Lcom/instagram/o/b/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/o/b/h;


# direct methods
.method constructor <init>(Lcom/instagram/o/b/h;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/instagram/o/b/i;->a:Lcom/instagram/o/b/h;

    invoke-direct {p0}, Lcom/instagram/common/a/a/q;-><init>()V

    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/o/b/j;
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-static {p0}, Lcom/instagram/o/b/m;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/o/b/j;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-static {p1}, Lcom/instagram/o/b/i;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/o/b/j;

    move-result-object v0

    return-object v0
.end method
