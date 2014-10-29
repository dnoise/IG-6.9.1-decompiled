.class final Lcom/instagram/bugreport/a/c;
.super Lcom/instagram/common/a/a/q;
.source "FlytrapRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/q",
        "<",
        "Lcom/instagram/bugreport/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/bugreport/a/b;


# direct methods
.method constructor <init>(Lcom/instagram/bugreport/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/instagram/bugreport/a/c;->a:Lcom/instagram/bugreport/a/b;

    invoke-direct {p0}, Lcom/instagram/common/a/a/q;-><init>()V

    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/bugreport/a/e;
    .locals 1
    .parameter

    .prologue
    .line 114
    invoke-static {p0}, Lcom/instagram/bugreport/a/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/bugreport/a/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 111
    invoke-static {p1}, Lcom/instagram/bugreport/a/c;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/bugreport/a/e;

    move-result-object v0

    return-object v0
.end method
