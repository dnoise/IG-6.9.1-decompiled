.class final Lcom/instagram/android/a/f;
.super Landroid/os/AsyncTask;
.source "NearbyVenuesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/instagram/android/a/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/a/d;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/instagram/android/a/f;->b:Lcom/instagram/android/a/d;

    iput-object p2, p0, Lcom/instagram/android/a/f;->a:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/instagram/android/a/f;->b:Lcom/instagram/android/a/d;

    iget-object v1, p0, Lcom/instagram/android/a/f;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/instagram/android/a/d;->a(Lcom/instagram/android/a/d;Ljava/util/List;)V

    .line 359
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/instagram/android/a/f;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
