.class public final Lcom/facebook/b/b;
.super Ljava/lang/Object;
.source "Facebook.java"


# static fields
.field public static final a:Landroid/net/Uri;

.field protected static b:Ljava/lang/String;

.field protected static c:Ljava/lang/String;

.field protected static d:Ljava/lang/String;


# instance fields
.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Landroid/app/Activity;

.field private j:[Ljava/lang/String;

.field private k:I

.field private l:Lcom/facebook/b/e;

.field private final m:J

.field private n:Z

.field private o:Lcom/facebook/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/b/b;->a:Landroid/net/Uri;

    .line 81
    const-string v0, "https://m.facebook.com/dialog/"

    sput-object v0, Lcom/facebook/b/b;->b:Ljava/lang/String;

    .line 83
    const-string v0, "https://graph.facebook.com/"

    sput-object v0, Lcom/facebook/b/b;->c:Ljava/lang/String;

    .line 85
    const-string v0, "https://api.facebook.com/restserver.php"

    sput-object v0, Lcom/facebook/b/b;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v2, p0, Lcom/facebook/b/b;->e:Ljava/lang/String;

    .line 89
    iput-wide v0, p0, Lcom/facebook/b/b;->f:J

    .line 90
    iput-wide v0, p0, Lcom/facebook/b/b;->g:J

    .line 100
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/facebook/b/b;->m:J

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/b/b;->n:Z

    .line 103
    iput-object v2, p0, Lcom/facebook/b/b;->o:Lcom/facebook/b/d;

    .line 112
    if-nez p1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify your application ID when instantiating a Facebook object. See README for details."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/facebook/b/b;->h:Ljava/lang/String;

    .line 118
    return-void
.end method

.method static synthetic a(Lcom/facebook/b/b;)Lcom/facebook/b/e;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/b/b;->l:Lcom/facebook/b/e;

    return-object v0
.end method

.method public static a(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 989
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "aid"

    aput-object v1, v2, v0

    .line 990
    sget-object v1, Lcom/facebook/b/b;->a:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 991
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 996
    :cond_0
    :goto_0
    return-object v3

    .line 994
    :cond_1
    const-string v1, "aid"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 791
    const-string v0, "GET"

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/b/b;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 818
    const-string v0, "format"

    const-string v1, "json"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    invoke-virtual {p0}, Lcom/facebook/b/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    const-string v0, "access_token"

    invoke-virtual {p0}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/facebook/b/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 824
    :goto_0
    invoke-static {v0, p3, p2}, Lcom/facebook/b/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 822
    :cond_1
    sget-object v0, Lcom/facebook/b/b;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 380
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 381
    array-length v1, p2

    if-lez v1, :cond_0

    .line 382
    const-string v1, "scope"

    const-string v2, ","

    invoke-static {v2, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_0
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 385
    const-string v1, "oauth"

    new-instance v2, Lcom/facebook/b/c;

    invoke-direct {v2, p0}, Lcom/facebook/b/c;-><init>(Lcom/facebook/b/b;)V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/facebook/b/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/b/e;)V

    .line 418
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/b/e;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/facebook/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 861
    const-string v1, "display"

    const-string v2, "touch"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string v1, "redirect_uri"

    const-string v2, "fbconnect://success"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const-string v1, "oauth"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 865
    const-string v1, "type"

    const-string v2, "user_agent"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const-string v1, "client_id"

    iget-object v2, p0, Lcom/facebook/b/b;->h:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/b/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 872
    const-string v1, "access_token"

    invoke-virtual {p0}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/facebook/b/m;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 875
    const-string v1, "android.permission.INTERNET"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 877
    const-string v0, "Error"

    const-string v1, "Application requires permission to access the Internet"

    invoke-static {p1, v0, v1}, Lcom/facebook/b/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    :goto_1
    return-void

    .line 868
    :cond_1
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/facebook/b/b;->h:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 880
    :cond_2
    new-instance v1, Lcom/facebook/b/j;

    invoke-direct {v1, p1, v0, p4}, Lcom/facebook/b/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/b/e;)V

    invoke-virtual {v1}, Lcom/facebook/b/j;->show()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/b/b;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lcom/facebook/b/b;->b(Lcom/facebook/b/b;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 311
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 313
    if-nez v1, :cond_0

    .line 317
    :goto_0
    return v0

    :cond_0
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 357
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 363
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 364
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 365
    const/4 v0, 0x1

    .line 368
    :cond_0
    :goto_1
    return v0

    .line 363
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private a(Landroid/support/v4/app/Fragment;Ljava/lang/String;[Ljava/lang/String;I)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x7f99

    const/4 v1, 0x0

    .line 266
    const/4 v0, 0x1

    .line 267
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 269
    const-string v3, "com.facebook.katana"

    const-string v4, "com.facebook.katana.ProxyAuth"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v3, "client_id"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    array-length v3, p3

    if-lez v3, :cond_0

    .line 273
    const-string v3, "scope"

    const-string v4, ","

    invoke-static {v4, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/facebook/b/b;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 292
    :goto_0
    return v1

    .line 283
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/b/b;->i:Landroid/app/Activity;

    .line 284
    iput-object p3, p0, Lcom/facebook/b/b;->j:[Ljava/lang/String;

    .line 285
    iput v5, p0, Lcom/facebook/b/b;->k:I

    .line 287
    const/16 v3, 0x7f99

    :try_start_0
    invoke-virtual {p1, v2, v3}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v1, v0

    .line 292
    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/facebook/b/b;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/b/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 1086
    const/4 v0, 0x0

    .line 1087
    monitor-enter p0

    .line 1088
    :try_start_0
    iget-object v1, p0, Lcom/facebook/b/b;->o:Lcom/facebook/b/d;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/facebook/b/b;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1090
    iget-object v1, p0, Lcom/facebook/b/b;->h:Ljava/lang/String;

    .line 1093
    if-eqz v1, :cond_0

    .line 1094
    new-instance v0, Lcom/facebook/b/d;

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/b/d;-><init>(Lcom/facebook/b/b;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/b/b;->o:Lcom/facebook/b/d;

    .line 1097
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1099
    if-eqz v0, :cond_1

    .line 1100
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/b/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1102
    :cond_1
    return-void

    .line 1097
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/b/e;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 586
    iput-object p3, p0, Lcom/facebook/b/b;->l:Lcom/facebook/b/e;

    .line 591
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/b/b;->b(Landroid/content/Context;)V

    .line 594
    iget-object v0, p0, Lcom/facebook/b/b;->h:Ljava/lang/String;

    const/16 v1, 0x7f99

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/facebook/b/b;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v0

    .line 599
    if-nez v0, :cond_0

    .line 600
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/b/b;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 602
    :cond_0
    return-void
.end method

.method private static b(Lcom/facebook/b/b;Ljava/lang/String;Landroid/content/Context;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1053
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/b;->a(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 1054
    const-string v0, "com.facebook.sdk.attributionTracking"

    invoke-virtual {p2, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ping"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1056
    invoke-interface {v2, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1057
    cmp-long v0, v4, v8

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 1058
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1059
    const-string v4, "fields"

    const-string v5, "supports_attribution"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    invoke-direct {p0, p1, v0}, Lcom/facebook/b/b;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/m;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1061
    const-string v4, "supports_attribution"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1063
    instance-of v4, v0, Ljava/lang/Boolean;

    if-nez v4, :cond_0

    .line 1064
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "%s contains %s instead of a Boolean"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "supports_attribution"

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1068
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1069
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1070
    const-string v4, "event"

    const-string v5, "MOBILE_APP_INSTALL"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    const-string v4, "attribution"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    const-string v1, "%s/activities"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1075
    const-string v4, "POST"

    invoke-direct {p0, v1, v0, v4}, Lcom/facebook/b/b;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 1078
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1079
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1080
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1083
    :cond_1
    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 335
    if-nez v1, :cond_0

    .line 339
    :goto_0
    return v0

    :cond_0
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/b/b;)Lcom/facebook/b/d;
    .locals 1
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/b/b;->o:Lcom/facebook/b/d;

    return-object v0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 1007
    iget-boolean v0, p0, Lcom/facebook/b/b;->n:Z

    return v0
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 434
    iget v0, p0, Lcom/facebook/b/b;->k:I

    if-ne p1, v0, :cond_2

    .line 437
    if-ne p2, v4, :cond_9

    .line 440
    const-string v0, "error"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    if-nez v0, :cond_0

    .line 442
    const-string v0, "error_type"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    :cond_0
    if-eqz v0, :cond_7

    .line 447
    const-string v1, "service_disabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "AndroidAuthKillSwitchException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 449
    :cond_1
    invoke-static {}, Lcom/facebook/b/m;->a()V

    .line 451
    iget-object v0, p0, Lcom/facebook/b/b;->i:Landroid/app/Activity;

    iget-object v1, p0, Lcom/facebook/b/b;->j:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/facebook/b/b;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 502
    :cond_2
    :goto_0
    return-void

    .line 452
    :cond_3
    const-string v1, "access_denied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "OAuthAccessDeniedException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 454
    :cond_4
    invoke-static {}, Lcom/facebook/b/m;->a()V

    .line 455
    iget-object v0, p0, Lcom/facebook/b/b;->l:Lcom/facebook/b/e;

    invoke-interface {v0}, Lcom/facebook/b/e;->a()V

    goto :goto_0

    .line 457
    :cond_5
    const-string v1, "error_description"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 458
    if-eqz v1, :cond_6

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Login failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/facebook/b/m;->a()V

    .line 462
    iget-object v1, p0, Lcom/facebook/b/b;->l:Lcom/facebook/b/e;

    new-instance v2, Lcom/facebook/b/i;

    invoke-direct {v2, v0}, Lcom/facebook/b/i;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/facebook/b/e;->a(Lcom/facebook/b/i;)V

    goto :goto_0

    .line 468
    :cond_7
    const-string v0, "access_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/b/b;->a(Ljava/lang/String;)V

    .line 469
    const-string v0, "expires_in"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/b/b;->b(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Lcom/facebook/b/b;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Login Success! access_token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/b/b;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/facebook/b/m;->a()V

    .line 475
    iget-object v0, p0, Lcom/facebook/b/b;->l:Lcom/facebook/b/e;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/b/e;->a(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 477
    :cond_8
    iget-object v0, p0, Lcom/facebook/b/b;->l:Lcom/facebook/b/e;

    new-instance v1, Lcom/facebook/b/i;

    const-string v2, "Failed to receive access token."

    invoke-direct {v1, v2}, Lcom/facebook/b/i;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/b/e;->a(Lcom/facebook/b/i;)V

    goto/16 :goto_0

    .line 483
    :cond_9
    if-nez p2, :cond_2

    .line 486
    if-eqz p3, :cond_a

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Login failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "error"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/facebook/b/m;->a()V

    .line 489
    iget-object v0, p0, Lcom/facebook/b/b;->l:Lcom/facebook/b/e;

    new-instance v1, Lcom/facebook/b/a;

    const-string v2, "error"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "error_code"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "failing_url"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/b/e;->a(Lcom/facebook/b/a;)V

    goto/16 :goto_0

    .line 497
    :cond_a
    invoke-static {}, Lcom/facebook/b/m;->a()V

    .line 498
    iget-object v0, p0, Lcom/facebook/b/b;->l:Lcom/facebook/b/e;

    invoke-interface {v0}, Lcom/facebook/b/e;->a()V

    goto/16 :goto_0
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 955
    iput-wide p1, p0, Lcom/facebook/b/b;->g:J

    .line 956
    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/b/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 569
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/b/b;->b(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/b/e;)V

    .line 570
    return-void
.end method

.method public final a(Lcom/facebook/b/e;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/facebook/b/b;->l:Lcom/facebook/b/e;

    .line 122
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 944
    iput-object p1, p0, Lcom/facebook/b/b;->e:Ljava/lang/String;

    .line 945
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/b/b;->f:J

    .line 946
    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 933
    iput-object p1, p0, Lcom/facebook/b/b;->e:Ljava/lang/String;

    .line 934
    iput-wide p2, p0, Lcom/facebook/b/b;->g:J

    .line 935
    iput-wide p4, p0, Lcom/facebook/b/b;->f:J

    .line 936
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/facebook/b/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/b/b;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 296
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 297
    const-string v1, "com.facebook.katana"

    const-string v2, "com.facebook.katana.ProxyAuth"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    invoke-static {p1, v0}, Lcom/facebook/b/b;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/Context;Lcom/facebook/b/f;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 522
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 524
    const-string v1, "com.facebook.katana"

    const-string v2, "com.facebook.katana.platform.TokenRefreshService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    invoke-static {p1, v0}, Lcom/facebook/b/b;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 531
    const/4 v0, 0x0

    .line 534
    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/facebook/b/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/b/g;-><init>(Lcom/facebook/b/b;Landroid/content/Context;Lcom/facebook/b/f;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 965
    if-eqz p1, :cond_0

    .line 966
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    .line 969
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/facebook/b/b;->a(J)V

    .line 971
    :cond_0
    return-void

    .line 966
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    .prologue
    .line 888
    invoke-virtual {p0}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/b/b;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/b/b;->d()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/facebook/b/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 910
    iget-wide v0, p0, Lcom/facebook/b/b;->g:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 920
    iget-wide v0, p0, Lcom/facebook/b/b;->f:J

    return-wide v0
.end method
