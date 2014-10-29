.class final Lcom/instagram/android/fragment/fk;
.super Lcom/instagram/ui/b/a;
.source "TabbedExploreFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fc;


# direct methods
.method public constructor <init>(Lcom/instagram/android/fragment/fc;Landroid/support/v4/app/s;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/instagram/android/fragment/fk;->a:Lcom/instagram/android/fragment/fc;

    .line 290
    invoke-direct {p0, p2}, Lcom/instagram/ui/b/a;-><init>(Landroid/support/v4/app/s;)V

    .line 291
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .parameter

    .prologue
    .line 295
    sget-object v0, Lcom/instagram/android/fragment/fc;->a:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    new-instance v0, Lcom/instagram/android/fragment/ar;

    invoke-direct {v0}, Lcom/instagram/android/fragment/ar;-><init>()V

    .line 298
    :goto_0
    return-object v0

    .line 297
    :cond_0
    sget-object v0, Lcom/instagram/android/fragment/fc;->b:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    new-instance v0, Lcom/instagram/android/fragment/aq;

    invoke-direct {v0}, Lcom/instagram/android/fragment/aq;-><init>()V

    goto :goto_0

    .line 300
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/instagram/android/fragment/fc;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
