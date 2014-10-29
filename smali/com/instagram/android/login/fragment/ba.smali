.class final Lcom/instagram/android/login/fragment/ba;
.super Lcom/instagram/android/login/fragment/bt;
.source "RegisterFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/an;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
    .locals 1
    .parameter

    .prologue
    .line 932
    iput-object p1, p0, Lcom/instagram/android/login/fragment/ba;->a:Lcom/instagram/android/login/fragment/an;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/login/fragment/bt;-><init>(Lcom/instagram/android/login/fragment/an;B)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 935
    if-eqz p1, :cond_0

    .line 936
    sget-object v0, Lcom/instagram/p/b;->B:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 946
    :goto_0
    return-void

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ba;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->e(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v0

    .line 939
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 940
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ba;->a:Lcom/instagram/android/login/fragment/an;

    sget-object v1, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;

    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->d(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/fragment/bx;)V

    .line 941
    sget v0, Lcom/facebook/az;->password_must_be_six_characters:I

    invoke-static {v0}, Lcom/instagram/o/e;->a(I)V

    goto :goto_0

    .line 943
    :cond_1
    sget-object v0, Lcom/instagram/p/b;->C:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    goto :goto_0
.end method
