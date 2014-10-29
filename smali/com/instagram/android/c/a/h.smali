.class public final Lcom/instagram/android/c/a/h;
.super Lcom/instagram/api/j/b;
.source "ModifyPhotosOfYouRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/b",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final d:Lcom/instagram/feed/d/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/api/j/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "Ljava/lang/String;",
            "Lcom/instagram/feed/d/l;",
            "Lcom/instagram/api/j/a",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {}, Lcom/instagram/common/y/e/a;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p5}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 35
    iput-object p3, p0, Lcom/instagram/android/c/a/h;->a:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/instagram/android/c/a/h;->d:Lcom/instagram/feed/d/l;

    .line 37
    return-void
.end method

.method private m()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/instagram/android/c/a/h;->d:Lcom/instagram/feed/d/l;

    iget-object v1, p0, Lcom/instagram/android/c/a/h;->a:Ljava/lang/String;

    const-string v2, "approve"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/l;->b(Z)V

    .line 62
    iget-object v0, p0, Lcom/instagram/android/c/a/h;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->z()V

    .line 66
    iget-object v0, p0, Lcom/instagram/android/c/a/h;->a:Ljava/lang/String;

    const-string v1, "approve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lcom/instagram/common/d/j;

    invoke-virtual {p0}, Lcom/instagram/android/c/a/h;->k()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/d/j;-><init>(Landroid/content/Context;)V

    const-string v1, "com.instagram.android.people.fragment.PhotosOfYouFragment.PHOTOS_OF_YOU_UPDATED"

    invoke-virtual {v0, v1}, Lcom/instagram/common/d/j;->a(Ljava/lang/String;)V

    .line 72
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/instagram/android/c/a/h;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/android/c/a/h;->d:Lcom/instagram/feed/d/l;

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public final synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/instagram/android/c/a/h;->m()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method protected final c_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "usertags/review/"

    return-object v0
.end method
