.class final Lcom/instagram/android/maps/c/k;
.super Lcom/instagram/api/j/b;
.source "PhotoMapsEditHelper.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/c/c;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/instagram/android/maps/c/c;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/instagram/android/maps/c/k;->a:Lcom/instagram/android/maps/c/c;

    .line 222
    invoke-static {}, Lcom/instagram/common/y/e/a;->a()I

    move-result v0

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 223
    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 237
    const-string v0, "ticket"

    iget-object v1, p0, Lcom/instagram/android/maps/c/k;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/instagram/android/maps/c/k;->d:Ljava/lang/String;

    .line 227
    invoke-virtual {p0}, Lcom/instagram/android/maps/c/k;->g()V

    .line 228
    return-void
.end method

.method public final b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 242
    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method public final c(Lcom/instagram/api/j/j;)Z
    .locals 1
    .parameter

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method protected final c_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    const-string v0, "maps/check_ticket/"

    return-object v0
.end method
