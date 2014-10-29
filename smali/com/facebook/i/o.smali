.class public final Lcom/facebook/i/o;
.super Ljava/lang/Object;
.source "RegexCache.java"


# instance fields
.field private a:Lcom/facebook/i/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/i/p",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/facebook/i/p;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/facebook/i/p;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/i/o;->a:Lcom/facebook/i/p;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/i/o;->a:Lcom/facebook/i/p;

    invoke-virtual {v0, p1}, Lcom/facebook/i/p;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 37
    if-nez v0, :cond_0

    .line 38
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/facebook/i/o;->a:Lcom/facebook/i/p;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/i/p;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    :cond_0
    return-object v0
.end method
