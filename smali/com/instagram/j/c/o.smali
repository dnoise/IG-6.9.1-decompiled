.class final Lcom/instagram/j/c/o;
.super Lcom/instagram/ui/b/a;
.source "NewsfeedFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/j/c/g;


# direct methods
.method public constructor <init>(Lcom/instagram/j/c/g;Landroid/support/v4/app/s;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/instagram/j/c/o;->a:Lcom/instagram/j/c/g;

    .line 305
    invoke-direct {p0, p2}, Lcom/instagram/ui/b/a;-><init>(Landroid/support/v4/app/s;)V

    .line 306
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .parameter

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 311
    new-instance v0, Lcom/instagram/j/c/e;

    invoke-direct {v0}, Lcom/instagram/j/c/e;-><init>()V

    .line 313
    :goto_0
    return-object v0

    .line 312
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 313
    new-instance v0, Lcom/instagram/j/c/s;

    invoke-direct {v0}, Lcom/instagram/j/c/s;-><init>()V

    goto :goto_0

    .line 315
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x2

    return v0
.end method
