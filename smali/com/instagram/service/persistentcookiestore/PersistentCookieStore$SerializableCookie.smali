.class Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;
.super Ljava/lang/Object;
.source "PersistentCookieStore.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x58765a8013aeb70cL


# instance fields
.field private transient clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;

.field private final transient cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/cookie/Cookie;)V
    .locals 0
    .parameter "cookie"

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;

    .line 324
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 346
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 348
    new-instance v2, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;

    invoke-direct {v2, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;

    .line 349
    iget-object v1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->setComment(Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    .line 352
    iget-object v1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->setVersion(I)V

    .line 354
    iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->setSecure(Z)V

    .line 355
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 342
    iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->isSecure()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 343
    return-void
.end method


# virtual methods
.method public getCookie()Lch/boye/httpclientandroidlib/cookie/Cookie;
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;

    .line 328
    iget-object v1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;

    if-eqz v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;

    .line 331
    :cond_0
    return-object v0
.end method
