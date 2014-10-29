.class final Lcom/instagram/share/b/o;
.super Lcom/instagram/common/a/a/q;
.source "GraphPermissionsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/q",
        "<",
        "Lcom/instagram/share/b/p;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/share/b/n;


# direct methods
.method constructor <init>(Lcom/instagram/share/b/n;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/instagram/share/b/o;->a:Lcom/instagram/share/b/n;

    invoke-direct {p0}, Lcom/instagram/common/a/a/q;-><init>()V

    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/share/b/p;
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-static {p0}, Lcom/instagram/share/b/q;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/share/b/p;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-static {p1}, Lcom/instagram/share/b/o;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/share/b/p;

    move-result-object v0

    return-object v0
.end method
