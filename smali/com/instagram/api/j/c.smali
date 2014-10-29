.class public abstract Lcom/instagram/api/j/c;
.super Ljava/lang/Object;
.source "AbstractLoaderRequest.java"

# interfaces
.implements Lcom/instagram/common/a/d/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/instagram/common/a/d/a;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:I

.field protected final b:Lcom/instagram/api/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/j/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected c:Landroid/content/Context;

.field private final d:Landroid/support/v4/app/an;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "I",
            "Lcom/instagram/api/j/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/instagram/api/j/c;->c:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/instagram/api/j/c;->d:Landroid/support/v4/app/an;

    .line 31
    iput p3, p0, Lcom/instagram/api/j/c;->a:I

    .line 33
    if-nez p4, :cond_0

    .line 34
    new-instance p4, Lcom/instagram/api/j/d;

    invoke-direct {p4, p0}, Lcom/instagram/api/j/d;-><init>(Lcom/instagram/api/j/c;)V

    .line 42
    :cond_0
    iput-object p4, p0, Lcom/instagram/api/j/c;->b:Lcom/instagram/api/j/a;

    .line 43
    return-void
.end method


# virtual methods
.method public a(Lcom/instagram/api/j/j;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    return-void
.end method

.method public abstract b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public c(Lcom/instagram/api/j/j;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/instagram/api/j/c;->d:Landroid/support/v4/app/an;

    iget v1, p0, Lcom/instagram/api/j/c;->a:I

    invoke-virtual {p0}, Lcom/instagram/api/j/c;->h()Lcom/instagram/api/j/h;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/ao;)Landroid/support/v4/a/c;

    .line 47
    return-void
.end method

.method public abstract g_()Ljava/lang/String;
.end method

.method protected h()Lcom/instagram/api/j/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/api/j/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/instagram/api/j/h;

    iget-object v1, p0, Lcom/instagram/api/j/c;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/api/j/c;->b:Lcom/instagram/api/j/a;

    invoke-direct {v0, v1, p0, v2}, Lcom/instagram/api/j/h;-><init>(Landroid/content/Context;Lcom/instagram/api/j/c;Lcom/instagram/api/j/a;)V

    return-object v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/instagram/api/j/c;->a:I

    return v0
.end method

.method public final j()Landroid/support/v4/app/an;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/instagram/api/j/c;->d:Landroid/support/v4/app/an;

    return-object v0
.end method

.method public final k()Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/instagram/api/j/c;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lch/boye/httpclientandroidlib/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method
